
(defrule dark0
(declare (salience 5000))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) after)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark0   "  ?id "  aMXerA )" crlf))
)


; We reached after dark.
(defrule dark1
(declare (salience 4750))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 get|be) ;Added by 'be' to the list and changed the fact (id-word) to (id-root)by sheetal. (2-01-10);It was so dark that I could not see anything .
(or (id-cat ?id adjective|adjective_comparative|adjective_superlative)(id-cat_coarse ?id adjective)) ;Added cat_coarse fact by Roja (11-10-11) for sd-pipeline purpose.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark1   "  ?id "  aMXerA )" crlf))
)

(defrule dark2
(declare (salience 4700))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark2   "  ?id "  kAlA )" crlf))
)

;@@@ added by Pramila(BU) on 09-12-2013
;His attackers cornered him in a dark alley.
;उनके हमलावरों ने उसे  एक अंधेरी गली में घेर लिया.
(defrule dark3
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-in_saMbanXI  ?id2 ?id1)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark3   "  ?id "  aMXerA )" crlf))
)

;@@@ added by Pramila(BU) on 09-12-2013
;The film is a dark vision of the future.          ;oald
;यह फिल्म भविष्य की अन्धकारमय कल्पना है.
(defrule dark4
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 vision)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anXakArmaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark4   "  ?id "  anXakArmaya )" crlf))
)


;@@@ added by Pramila(BU) on 09-12-2013
;Sue has long dark hair.           ;oald
;सीता के लम्बे काले बाल है.
;The dark clouds in the sky meant that a storm was coming.    ;oald
;आकाश में काले बादलों का मतलब है कि तूफान आ रहा था.
(defrule dark5
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 hair|eye|skin|cloud)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark5   "  ?id "  kAlA )" crlf))
)


;@@@ added by Pramila(BU) on 09-12-2013
;dark blue/green/red               ;oald
;गहरा नीला/हरा/लाल
(defrule dark6
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 blue|red|black|green|black|colour|yellow)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark6   "  ?id "  gaharA )" crlf))
)


(defrule dark8
(declare (salience 4000))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark8   "  ?id "  aMXerA )" crlf))
)

;"dark","N","1.aMXerA"
;The powers of darkness
;He moved off into the darkness
;He was in the dark concerning their intentions
;--"2.sAzvalA"
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_dark4
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 vision)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anXakArmaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " dark.clp   sub_samA_dark4   "   ?id " anXakArmaya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_dark4
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 vision)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anXakArmaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " dark.clp   obj_samA_dark4   "   ?id " anXakArmaya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_dark5
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 hair|eye|skin|cloud)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " dark.clp   sub_samA_dark5   "   ?id " kAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_dark5
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 hair|eye|skin|cloud)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " dark.clp   obj_samA_dark5   "   ?id " kAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_dark6
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 blue|red|black|green|black|colour|yellow)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " dark.clp   sub_samA_dark6   "   ?id " gaharA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_dark6
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 blue|red|black|green|black|colour|yellow)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " dark.clp   obj_samA_dark6   "   ?id " gaharA )" crlf))
)
