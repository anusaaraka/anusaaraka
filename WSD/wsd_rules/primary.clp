
(defrule primary0
(declare (salience 5000))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primary.clp 	primary0   "  ?id "  Axya )" crlf))
)

;"primary","Adj","1.Axya"
;The doctor cured the disease in its primary stage only.
;--"2.mUla"
;The primary aim of N.S.S. is to produce social volunteers.
;--"3.prAWamika"
;One must possess primary education for high school study.
;
(defrule primary1
(declare (salience 4900))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_prakAra_kA_nirvAcana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primary.clp 	primary1   "  ?id "  eka_prakAra_kA_nirvAcana )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthai 23-1-2014
;The primary requisite of the University at the time was accommodation for post-graduate classes and a suitable library. [Gyannidhi]
;उस समय विश्वविद्यालय की मूल जरूरत स्नातकोत्तर कक्षाओं के लिए आवास और सही पुस्तकालय था .
(defrule primary2
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 requisite|necessity|requirements|need|cause|unit|source)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primary.clp 	primary2   "  ?id "  mUla )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthai 24-1-2014
;Her primary responsibility is to train new employees. [Cambridge]
;उसका मुख्य उत्तरदायित्व नये कर्मचारियों को प्रशिक्षण देना है .
(defrule primary3
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 responsibility|job|concern|charge|task|duty|aim|importance|goal|objective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primary.clp 	primary3   "  ?id "  muKya )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthai 24-1-2014
;The disease is still in its primary stage. [OALD]
;बीमारी अब भी प्रारम्भिक चरण में है .
(defrule primary4
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 stage|training)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAramBika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primary.clp 	primary4   "  ?id "  prAramBika )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthai 24-1-2014
;Primary teacher. [OALD]
;प्राईमरी शिक्षक .
(defrule primary5
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 teacher|education|school)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praImarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primary.clp 	primary5   "  ?id "  praImarI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthai 24-1-2014
;A primary care physician.  [MW]
;एक प्राथमिक देखभाल चिकित्सक .
(defrule primary6
(declare (salience 5200))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 care|treatment|physician)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAWamika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  primary.clp 	primary6   "  ?id "  prAWamika )" crlf))
)

;"primary","N","1.eka_prakAra_kA_nirvAcana"
;He won by a great margin in primary elections.
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_primary2
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 requisite|necessity|requirements|need|cause|unit|source)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   sub_samA_primary2   "   ?id " mUla )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_primary2
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 requisite|necessity|requirements|need|cause|unit|source)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   obj_samA_primary2   "   ?id " mUla )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_primary3
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 responsibility|job|concern|charge|task|duty|aim|importance|goal|objective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   sub_samA_primary3   "   ?id " muKya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_primary3
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 responsibility|job|concern|charge|task|duty|aim|importance|goal|objective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   obj_samA_primary3   "   ?id " muKya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_primary4
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 stage|training)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAramBika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   sub_samA_primary4   "   ?id " prAramBika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_primary4
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 stage|training)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAramBika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   obj_samA_primary4   "   ?id " prAramBika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_primary5
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 teacher|education|school)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praImarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   sub_samA_primary5   "   ?id " praImarI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_primary5
(declare (salience 5500))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 teacher|education|school)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praImarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   obj_samA_primary5   "   ?id " praImarI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_primary6
(declare (salience 5200))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 care|treatment|physician)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAWamika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   sub_samA_primary6   "   ?id " prAWamika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_primary6
(declare (salience 5200))
(id-root ?id primary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 care|treatment|physician)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAWamika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " primary.clp   obj_samA_primary6   "   ?id " prAWamika )" crlf))
)
