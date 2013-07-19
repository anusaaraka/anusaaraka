;This file is created by Aditya and Hardik(8.07.2013),IIT(BHU)

;He committed a murder.
;Who committed this crime?
(defrule commit0
(declare (salience 5000))
(id-root ?id commit)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-object ?id ?id1)(kriyA-subject ?id ?id1))
(id-root ?id1 murder|sin|rape|error|crime|act|suicide|offence|fraud) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  commit.clp  	commit0   "  ?id "   kara)" crlf))
)
