MACRO phone
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
ENDM

PhoneContacts:
; entries correspond to PHONE_* constants
	table_width PHONE_CONTACT_SIZE, PhoneContacts
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_MOM,      PLAYERS_HOUSE_1F,          ANYTIME, MomPhoneCalleeScript,     0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BIKESHOP, OAKS_LAB,                  0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BILL,     N_A,                       ANYTIME, BillPhoneCalleeScript,    0,       BillPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_ELM,      ELMS_LAB,                  ANYTIME, ElmPhoneCalleeScript,     0,       ElmPhoneCallerScript
	phone TRAINER_NONE, PHONE_00,              NATIONAL_PARK,             ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              NATIONAL_PARK,             ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              OLIVINE_LIGHTHOUSE_2F,     ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_26,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_26,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_27,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_27,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_30,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_31,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_32,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_32,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_33,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_34,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_34,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_35,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_35,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_36,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_38,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_38,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_39,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_42,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_43,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_43,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_44,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_44,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_45,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_45,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              ROUTE_46,                  ANYTIME, UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BUENA,    GOLDENROD_DEPT_STORE_ROOF, ANYTIME, BuenaPhoneCalleeScript,   ANYTIME, BuenaPhoneCallerScript
	assert_table_length NUM_PHONE_CONTACTS + 1
