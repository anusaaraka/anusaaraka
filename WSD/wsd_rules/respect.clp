
(defrule respect0
(declare (salience 5000))
(id-root ?id respect)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id respecting )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  respect.clp  	respect0   "  ?id "  ke_bAre_meM )" crlf))
)

;"respecting","Prep","1.ke_bAre_meM"
;Do you have any information respecting the child's whereabouts?
;
(defrule respect1
(declare (salience 4900))
(id-root ?id respect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respect.clp 	respect1   "  ?id "  sammAna )" crlf))
)

;"respect","N","1.sammAna"
;Have some respect for your teachers.
;--"2.KyAla"
;A good journalist must have respect for the needs of the reader. 
;--"3.saMbaMXa_yA_saMxarBa"
;With respect to your  letter.
;Your article is praiseworthy in respect of style.
;--"4.kuCa_aMSa_waka"
;In some respect your article is better than mine.
;
(defrule respect2
(declare (salience 4800))
(id-root ?id respect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  respect.clp 	respect2   "  ?id "  sammAna_kara )" crlf))
)

;"respect","VT","1.sammAna_karanA"
;We must respect our elders.
;--"2.praSaMsA_karanA"
;I respect you for your honesty.
;--"3.AwmasammAna_raKanA"
;If you don't respect your self,how can you expect others to respect you.
;
