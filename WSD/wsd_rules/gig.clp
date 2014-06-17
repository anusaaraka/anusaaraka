;@@@ Adaded by Nandini
;We often ride on a gig at gate way of India.
;hama aksara BArawa ke xvAra mArga para tamatama para savArI karawe hEM.
(defrule gig1
(declare (salience 60))
(id-root ?id gig)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tamatama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gig.clp       gig1   "  ?id "  tamatama )" crlf))
)

;@@@ Adaded by Nandini
;Gigs saved people lives at the time of Titanic sinking.
;tEtAnika dubawe samaya jazhAja_ke_sAWa_kI nAva ne logoM kA jIvana bachAyA.
(defrule gig2
(declare (salience 60))
(id-root ?id gig)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jazhAja_ke_sAWa_kI_nAZva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gig.clp       gig2   "  ?id "  jazhAja_ke_sAWa_kI_nAZva )" crlf))
)

;===========Default-rule==============
;@@@ Adaded by Nandini
;The band played all new material at the gig.[oxford advanced lerner dictionary]
;bENda jalase meM saba nayI cIjezM bajAye.
(defrule gig0
(declare (salience 50))
(id-root ?id gig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gig.clp       gig0   "  ?id "  jalasA )" crlf))
)
