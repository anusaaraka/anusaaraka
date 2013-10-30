
(defrule yield0
(declare (salience 5000))
(id-root ?id yield)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id yielding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id narma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  yield.clp  	yield0   "  ?id "  narma )" crlf))
)

;"yielding","Adj","1.narma"
;I practised polevault with an yielding bamboo stick.
;
;
(defrule yield1
(declare (salience 4900))
(id-root ?id yield)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pExAkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " yield.clp	yield1  "  ?id "  " ?id1 "  pExAkara  )" crlf))
)

(defrule yield2
(declare (salience 4800))
(id-root ?id yield)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pExAkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " yield.clp	yield2  "  ?id "  " ?id1 "  pExAkara  )" crlf))
)

(defrule yield3
(declare (salience 4700))
(id-root ?id yield)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yield.clp 	yield3   "  ?id "  upaja )" crlf))
)

;"yield","N","1.upaja"
;The yield of kharif crops was not good this season.
;
(defrule yield4
(declare (salience 4600))
(id-root ?id yield)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXIna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yield.clp 	yield4   "  ?id "  aXIna_ho )" crlf))
)

;"yield","VI","1.aXIna_honA"
;He yielded to his boss's pressure.
;
(defrule yield5
(declare (salience 4500))
(id-root ?id yield)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yield.clp 	yield5   "  ?id "  xe )" crlf))
)

;"yield","VT","1.xenA"
;The militants yielded six Indian soldiers to the Army.
;
