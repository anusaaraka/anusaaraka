
(defrule fuse0
(declare (salience 5000))
(id-root ?id fuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id palIwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fuse.clp 	fuse0   "  ?id "  palIwA )" crlf))
)

;"fuse","N","1.palIwA"
;The police removed the fuse of the bomb to avoid explosion.
;Fuse is used for using electricity safely.
;
(defrule fuse1
(declare (salience 4900))
(id-root ?id fuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fuse.clp 	fuse1   "  ?id "  gala )" crlf))
)

;"fuse","V","1.galanA"
;All the lights have fused.
;
(defrule fuse2
(declare (salience 4800))
(id-root ?id fuse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fuse.clp 	fuse2   "  ?id "  milA )" crlf))
)

;"fuse","VT","1.milAnA"
;He is a composer who fuses carnatic music with western music.
;The chemists can fuse two metals to make alloy.
;
