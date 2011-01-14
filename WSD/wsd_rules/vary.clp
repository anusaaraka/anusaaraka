
(defrule vary0
(declare (salience 5000))
(id-root ?id vary)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id varied )
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id parivarwiwa_ho))
(assert (id-H_vib_mng ?id ed/en))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  vary.clp  	vary0   "  ?id "  parivarwiwa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  vary.clp       vary0   "  ?id " ed/en )" crlf))
)

(defrule vary1
(declare (salience 4900))
(id-root ?id vary)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id varied )
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id parivarwiwa_kara))
(assert (id-H_vib_mng ?id ed/en))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  vary.clp  	vary1   "  ?id "  parivarwiwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  vary.clp       vary1   "  ?id " ed/en )" crlf))
)

(defrule vary2
(declare (salience 4800))
(id-root ?id vary)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id varied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Binna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  vary.clp  	vary2   "  ?id "  Binna )" crlf))
)

(defrule vary3
(declare (salience 4700))
(id-root ?id vary)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id varied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nAnArUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  vary.clp  	vary3   "  ?id "  nAnArUpa )" crlf))
)

;"varied","Adj","1.nAnArUpa"
;Courses for the students are many && varied
;
;
(defrule vary4
(declare (salience 4600))
(id-root ?id vary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwana_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vary.clp 	vary4   "  ?id "  parivarwana_ho )" crlf))
)

(defrule vary5
(declare (salience 4500))
(id-root ?id vary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vary.clp 	vary5   "  ?id "  parivarwana_kara )" crlf))
)

;default_sense && category=verb	waraha_waraha_kA_ho	0
;"vary","VT","1.waraha_waraha_kA_honA"
;Fish vary in sizes && shapes.
;--"Binna_honA"
;Prices of fruits vary from place to place
;--"baxala_xenA"
;The artist wanted to vary the show
;
;
