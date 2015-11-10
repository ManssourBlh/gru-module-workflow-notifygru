DROP TABLE IF EXISTS task_notify_gru_ef;
DROP TABLE IF EXISTS task_notify_gru_cf;
DROP TABLE IF EXISTS task_notify_gru_key;

/*==============================================================*/
/* Table structure for table tf_directory_cf					*/
/*==============================================================*/

CREATE TABLE task_notify_directory_cf_refact(
  id_task INT DEFAULT NULL,
  
  id_directory_crm_guicher INT DEFAULT NULL,
  position_directory_entry_id_demand_crm_guicher INT DEFAULT NULL,
  position_directory_entry_user_guid_crm_guicher INT DEFAULT NULL,
  send_notification_crm_guicher SMALLINT DEFAULT 1 NOT NULL,
  sender_name_crm_guicher VARCHAR(255) DEFAULT NULL, 
  subject_crm_guicher VARCHAR(255) DEFAULT NULL, 
  message_crm_guicher long VARCHAR DEFAULT NULL,
  status_text_crm_guicher VARCHAR(255) DEFAULT '' NOT NULL,
  position_directory_entry_crm_web_app_code_crm_guicher VARCHAR(255) DEFAULT '' NOT NULL,


  id_directory_directory_sms INT DEFAULT NULL, 
  position_directory_entry_sms_directory_sms INT DEFAULT -1,
  position_directory_entry_user_guid_directory_sms INT DEFAULT -1,
  sender_name_directory VARCHAR(255) DEFAULT NULL, 
  subject_directory VARCHAR(255) DEFAULT NULL, 
  message_directory long VARCHAR DEFAULT NULL,
  is_notify_by_email_directory SMALLINT NOT NULL DEFAULT 0,
  is_notify_by_sms_directory SMALLINT NOT NULL DEFAULT 0,
  is_notify_by_mailing_list_directory SMALLINT NOT NULL DEFAULT 0,
  is_notify_by_user_guid_directory SMALLINT NOT NULL DEFAULT 0,
  is_email_validation_directory SMALLINT NOT NULL DEFAULT 0,
  id_state_after_validation_directory INT DEFAULT NULL,
  label_link_directory VARCHAR(255) DEFAULT NULL, 
  message_validation_directory long varchar DEFAULT NULL,
  period_validity_directory INT DEFAULT NULL,
  recipients_cc_directory VARCHAR(255) DEFAULT '' NOT NULL,
  recipients_bcc_directory VARCHAR(255) DEFAULT '' NOT NULL,
  id_mailing_list_directory INT DEFAULT NULL,
  is_view_record_directory SMALLINT NOT NULL DEFAULT 0,
  label_link_view_record_directory VARCHAR(255) DEFAULT NULL,


  id_directory_directory INT DEFAULT NULL,
  position_directory_entry_email_directory INT DEFAULT -1,
  position_directory_entry_sms_directory INT DEFAULT -1,
  position_directory_entry_user_guid_directory INT DEFAULT -1,
  sender_name_directory VARCHAR(255) DEFAULT NULL, 
  subject_directory VARCHAR(255) DEFAULT NULL, 
  message_directory long VARCHAR DEFAULT NULL,
  is_notify_by_email_directory SMALLINT NOT NULL DEFAULT 0,
  is_notify_by_sms_directory SMALLINT NOT NULL DEFAULT 0,
  is_notify_by_mailing_list_directory SMALLINT NOT NULL DEFAULT 0,
  is_notify_by_user_guid_directory SMALLINT NOT NULL DEFAULT 0,
  is_email_validation_directory SMALLINT NOT NULL DEFAULT 0,
  id_state_after_validation_directory INT DEFAULT NULL,
  label_link_directory VARCHAR(255) DEFAULT NULL, 
  message_validation_directory long varchar DEFAULT NULL,
  period_validity_directory INT DEFAULT NULL,
  recipients_cc_directory VARCHAR(255) DEFAULT '' NOT NULL,
  recipients_bcc_directory VARCHAR(255) DEFAULT '' NOT NULL,
  id_mailing_list_directory INT DEFAULT NULL,
  is_view_record_directory SMALLINT NOT NULL DEFAULT 0,
  label_link_view_record_directory VARCHAR(255) DEFAULT NULL,


  PRIMARY KEY  (id_task)
  );


CREATE TABLE task_notify_gru_cf(
  id_task INT DEFAULT NULL,
  id_directory_ongle1 INT DEFAULT NULL,
  position_directory_entry_email INT DEFAULT -1,
  position_directory_entry_sms INT DEFAULT -1,
  position_directory_entry_user_guid_ongle1 INT DEFAULT -1,
  sender_name_ongle1 VARCHAR(255) DEFAULT NULL, 
  subject_ongle1 VARCHAR(255) DEFAULT NULL, 
  message_ongle1 long VARCHAR DEFAULT NULL,
  is_notify_by_email SMALLINT NOT NULL DEFAULT 0,
  is_notify_by_sms SMALLINT NOT NULL DEFAULT 0,
  is_notify_by_mailing_list SMALLINT NOT NULL DEFAULT 0,
  is_notify_by_user_guid SMALLINT NOT NULL DEFAULT 0,
  is_email_validation SMALLINT NOT NULL DEFAULT 0,
  id_state_after_validation INT DEFAULT NULL,
  label_link VARCHAR(255) DEFAULT NULL, 
  message_validation long varchar DEFAULT NULL,
  period_validity INT DEFAULT NULL,
  recipients_cc VARCHAR(255) DEFAULT '' NOT NULL,
  recipients_bcc VARCHAR(255) DEFAULT '' NOT NULL,
  id_mailing_list INT DEFAULT NULL,
  is_view_record SMALLINT NOT NULL DEFAULT 0,
  label_link_view_record VARCHAR(255) DEFAULT NULL,
  id_directory_ongle3 INT DEFAULT NULL,
  position_directory_entry_id_demand INT DEFAULT NULL,
  position_directory_entry_user_guid_ongle3 INT DEFAULT NULL,
  send_notification SMALLINT DEFAULT 1 NOT NULL,
  sender_name_ongle3 VARCHAR(255) DEFAULT NULL, 
  subject_ongle3 VARCHAR(255) DEFAULT NULL, 
  message_ongle3 long VARCHAR DEFAULT NULL,
  status_text VARCHAR(255) DEFAULT '' NOT NULL,
  position_directory_entry_crm_web_app_code VARCHAR(255) DEFAULT '' NOT NULL,
  PRIMARY KEY  (id_task)
  );
  
    


CREATE TABLE task_notify_gru_key(
	key_email VARCHAR(255) DEFAULT NULL, 
	id_task INT DEFAULT NULL,
	id_resource INT DEFAULT NULL,
        resource_type VARCHAR(255) DEFAULT NULL, 
	date_expiry timestamp DEFAULT NULL NULL,
	PRIMARY KEY  (key_email)
);

 CREATE TABLE task_notify_gru_ef(
  id_task INT DEFAULT NULL,
  position_directory_entry_file INT DEFAULT NULL,
  PRIMARY KEY  (id_task, position_directory_entry_file)
  ); 
  
  ALTER TABLE task_notify_gru_ef ADD CONSTRAINT fk_id_task_template FOREIGN KEY (id_task)
     REFERENCES task_notify_gru_cf (id_task)  ON DELETE RESTRICT ON UPDATE RESTRICT ;