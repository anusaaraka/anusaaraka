
;These rules(1 & 2) were added by Meena.

;I tried to get the gist of the argument .
;Can you give me the gist of the lecture?
;That was the gist of what he said.
;I think I got the gist of what she was saying.
(defrule gist1
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id gist)
(id-cat_coarse ?id1 verb)
(test (< ?id1 ?id))
(kriyA-object ?id1 ?id) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sArAMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gist.clp      gist1   "  ?id "  sArAMSa )" crlf))
)


;I do not quite follow your gist.
(defrule gist2
(declare (salience 5500))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id gist)
(id-root  =(- ?id 1) your|his|my|her|their|our)
;(id-cat_coarse ?id1 pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  wAwaparya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gist.clp      gist2   "  ?id "   wAwaparya )" crlf))
)                                                                               
;Students are taught the skills of reading and listening for gist.
;There should be one more rule to account for the meaning 'AXAra' as in the above sentence.                                                                               
                                
