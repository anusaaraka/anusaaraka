
(defrule envy0
(declare (salience 4000))
(id-root ?id envy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IrRyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  envy.clp 	envy0   "  ?id "  IrRyA )" crlf))
)

;"envy","N","1.IrRyA"
;He couldn't conceal his envy at my success .
;His healthy && strong body is the envy of his friends.
;
(defrule envy1
(declare (salience 4900))
(id-root ?id envy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IrRyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  envy.clp 	envy1   "  ?id "  IrRyA_kara )" crlf))
)

;"envy","VT","1.IrRyA_karanA"
;We shouldn't envy other's success .
;I realy envy your loving && happy family.
;


;@@@ Added by Pramila(Banasthali University)  on 04-02-2014
;He is the envy of all.   ;shiksharthi
;वह सभी लोगो की ईर्ष्या का पात्र है.
(defrule envy2
(declare (salience 5000))
(id-root ?id envy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IrRyA_kA_pAwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  envy.clp 	envy2   "  ?id "  IrRyA_kA_pAwra )" crlf))
)
