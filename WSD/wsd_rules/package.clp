
(defrule package0
(declare (salience 5000))
(id-root ?id package)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pulinxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  package.clp 	package0   "  ?id "  pulinxA )" crlf))
)

;"package","N","1.pulinxA"
(defrule package1
(declare (salience 4900))
(id-root ?id package)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaTarI_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  package.clp 	package1   "  ?id "  gaTarI_banA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 21-1-2014
;A package wrapped in brown paper. [Cambridge]
;भूरे कागज में लपेटा हुआ बण्डल .
(defrule package2
(declare (salience 5500))
(id-root ?id package)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 wrap|cover|drape|enclose|enfold|wrapped)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baNdala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  package.clp 	package2   "  ?id "  baNdala )" crlf))
)



;"package","V","1.gaTarI_banAnA"
;The items were packaged neatly.
;
