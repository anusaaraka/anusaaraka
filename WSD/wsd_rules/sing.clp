

;Added by Meena(27.8.09)
;She sang me a song.
(defrule sing1
(declare (salience 4900))
(id-root ?id sing)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_2  ?id ?id2)
(kriyA-object_1  ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sing.clp 	sing1   "  ?id "  gA )" crlf))
(assert (kriyA_id-object1_viBakwi ?id ke_liye))
)

;"sing","V","1.gAnA gAnA"
;He sings beautifully.
;
;
