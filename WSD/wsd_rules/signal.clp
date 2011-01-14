
(defrule signal0
(declare (salience 5000))
(id-root ?id signal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  signal.clp 	signal0   "  ?id "  viSiRta )" crlf))
)

;"signal","Adj","1.viSiRta/asAXAraNa"
;It is a signal victory to him.
;
(defrule signal1
(declare (salience 4900))
(id-root ?id signal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  signal.clp 	signal1   "  ?id "  saMkewa )" crlf))
)

;"signal","N","1.saMkewa"
;He gave the signal to the ship for deciding the direction.
;We must follow traffic signal.
;Our bad behaviour is the signal of our bad background.
;The graph on her computer is distorted because of interrupted signal.
;
(defrule signal2
(declare (salience 4800))
(id-root ?id signal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  signal.clp 	signal2   "  ?id "  saMkewa_kara )" crlf))
)

;Added by sheetal(30-12-09).
(defrule signal3
(declare (salience 4950))
(id-root ?id signal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 train)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id signala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  signal.clp    signal3   "  ?id "  signala )" crlf))
)
;The train waited at the outer signal .



;"signal","V","1.saMkewa_karanA/siganala_xenA"
;He was signaling for the removal of unwanted crowd.
;
