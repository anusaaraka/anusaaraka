
(defrule remark0
(declare (salience 5000))
(id-root ?id remark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tippaNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remark.clp 	remark0   "  ?id "  tippaNI )" crlf))
)

(defrule remark1
(declare (salience 4900))
(id-root ?id remark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tippaNI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remark.clp 	remark1   "  ?id "  tippaNI_kara )" crlf))
)

;default_sense && category=noun	prawikriyA	0
;"remark","N","1.prawikriyA"
;What is your remark on his article? 
;--"2.XyAna_xenA"
;There was nothing worthy of remark in the puppet show.      
;
;
