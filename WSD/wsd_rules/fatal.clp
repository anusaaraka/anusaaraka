
;@@@ Added by Krithika 3/12/2013
;The fatal day of the election finally arrived. [Freedictionary]
;cunAva kA nirNAyaka xina anwawaH A  gayA.
(defrule fatal1
(declare (salience 2))
(id-root ?id fatal)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fatal.clp 	fatal1   "  ?id "  nirNAyaka )" crlf))
)
;____________________________________________________________

;@@@ Added by Krithika 3/12/2013
;She made the fatal mistake of not inviting him to the party. [Freedictionary]
;usane usako pArti meM nahIM Amanwriwa karane kI KawaranAka galawI kI.
(defrule fatal2
(declare (salience 1))
(id-root ?id fatal)
;(id-root ?id1 mistake|error|fault|blunder|miscalculation|misunderstanding|flaw|oversight|misconception|fallacy|misapprehension|inaccuracy)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 error)
(viSeRya-viSeRaNa  ?id1 ?id)

(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KawaranAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fatal.clp 	fatal2   "  ?id "  KawaranAka )" crlf))
)

;#############################Default rules #####################################
;@@@ Added by Krithika 3/12/2013	
;Any delay would be fatal. [Oxford learner's dictionary]
;WodA  BI vilamba Gawaka hogA.
(defrule fatal_default
(id-root ?id fatal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gawaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fatal.clp 	fatal_default   "  ?id "  Gawaka )" crlf))
)

;############################Additional examples########################################
;The fatal flaw killed the system.
;The solution came through at the fatal moment.
;The fatal hour was near.
;There was a fatal flaw in the plan.
;It'd be fatal to try and stop them now.
;Such doctrines, if true, would be absolutely fatal to my theory.
;The closing of the plant was fatal to the town.
;A fatal series of events occured.
;In 2002, Karan met with a fatal accident.
;As late as the 1950s, tuberculosis was still a fatal illness.
;If she gets ill again it could prove fatal.
;The fatal error killed the system.
