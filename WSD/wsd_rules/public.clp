
(defrule public0
(declare (salience 5000))
(id-root ?id public)
?mng <-(meaning_to_be_decided ?id)
(or (samAsa ?id1 ?id) (id-cat_coarse ?id adjective)) ;Added by sukhada Ex: Do not smoke at the public places.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sArvajanika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  public.clp 	public0   "  ?id "  sArvajanika )" crlf))
)

;"public","Adj","1.sArvajanika"
;The campaign was designed to increase public awareness of the problem.
;
(defrule public1
(declare (salience 4900))
(id-root ?id public)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  public.clp 	public1   "  ?id "  janawA )" crlf))
)

;"public","N","1.janawA"
;The public has a right to know what is in this report.
;
