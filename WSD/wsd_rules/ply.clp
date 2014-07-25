
(defrule ply0
(declare (salience 5000))
(id-root ?id ply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id motAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ply.clp 	ply0   "  ?id "  motAI )" crlf))
)

;"ply","N","1.motAI{kapade_yA_lakadI_kI}"
;We bought a four ply knitting wool.
;
(defrule ply1
(declare (salience 4900))
(id-root ?id ply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AnA-jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ply.clp 	ply1   "  ?id "  AnA-jA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;Fishermen in small boats ply their trade up and down the coast.  [Cambridge]
;छोटी नावों में मछुआरे उनका सामान समुद्र तट पर बेचते हैं . 
(defrule ply2
(declare (salience 5500))
(id-root ?id ply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 trade|business|ware)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id becawe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ply.clp 	ply2   "  ?id "  becawe )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;Dealers are openly plying drugs in school playgrounds.  [Cambridge]
;व्यापारी विद्यालयों के खेल के मैदानों में दवा खुलेअाम बेचते रहे हैं . 
(defrule ply3
(declare (salience 5500))
(id-root ?id ply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 openly)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id becawe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ply.clp 	ply3   "  ?id "  becawe )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;The tailor delicately plied his needle.  [OALD]
;दर्जी ने कुशलतापूर्वक उसकी सुई का इस्तेमाल किया . 
(defrule ply4
(declare (salience 5500))
(id-word ?id plied)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iswemAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ply.clp 	ply4   "  ?id " iswemAla_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 30-12-2013
;A single ply of fabric. [MW]
;कपङे की एकमात्र परत . 
(defrule ply5
(declare (salience 5500))
(id-root ?id ply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ply.clp 	ply5   "  ?id " parawa )" crlf))
)


;"ply","V","1.AnA-jAnA"
;Private buses ply between our village && the town nearby.
;
