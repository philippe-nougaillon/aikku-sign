namespace :assemblee do

  desc "Envoyer le mail avec le lien pour signature collective à T-10"
  task :send_collective_link => :environment do
    Assemblee.where(automatique: true).where("assemblees.début BETWEEN ? AND ?", DateTime.now, DateTime.now + 10.minutes).each do |assemblee|
      assemblee.update(workflow_state: 'en cours')
      EnvoyerLienSignatureCollectiveJob.perform_later(assemblee)
    end
  end

  desc "Envoyer le mail avec le lien pour signature individuelle à T-10"
  task :send_link => :environment do
    Assemblee.where(notifier_participants: true).where("assemblees.début BETWEEN ? AND ?", DateTime.now, DateTime.now + 10.minutes).each do |assemblee|
      assemblee.update(workflow_state: 'en cours')
      User.where(id: assemblee.related_users).each do |user|
        EnvoyerLienSignatureJob.perform_later(assemblee, user)
      end
    end
  end

  desc "Changer le statut des 'en cours' en 'incomplet' T+1h"
  task :update_incomplets => :environment do
    Assemblee.where(workflow_state: 'en cours').where("assemblees.fin BETWEEN ? AND ?", DateTime.now, DateTime.now + 1.hour).each do |assemblee|
      assemblee.update(workflow_state: 'incomplet')
    end
  end

  desc "Repeter les sessions"
  task :repeat => :environment do
    Assemblee.where(repeter: true).where("assemblees.fin_repeter > ?", DateTime.now).each do |assemblee|
      if (DateTime.now.wday == 1 && assemblee.repeter_lun) || 
         (DateTime.now.wday == 2 && assemblee.repeter_mar) || 
         (DateTime.now.wday == 3 && assemblee.repeter_mer) ||
         (DateTime.now.wday == 4 && assemblee.repeter_jeu) ||
         (DateTime.now.wday == 5 && assemblee.repeter_ven) || 
         (DateTime.now.wday == 6 && assemblee.repeter_sam) || 
         (DateTime.now.wday == 7 && assemblee.repeter_dim)
        new_session = assemblee.dup
        new_session.change_date_début()
        new_session.workflow_state = 'attente'
        #puts new_session.inspect
        new_session.save
      end
    end
  end

end