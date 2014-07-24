;@@@ Added by Nandini (3-12-13)
;She wrote a life of Mozart.
;usane PropN-mozart-PropN kI jIvanI liKI.
(defrule life1
(declare (salience 100))
(id-root ?id life)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject  2 1)
(viSeRya-of_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  life.clp 	life1   "  ?id "  jIvanI)" crlf))
)
;===============default-rule==========
;@@@ Added by Nandini (3-12-13)
;She has a full social life.
;usakA eka pUrA sAmAjika jIvana hE.
(defrule life0
(declare (salience 50))
(id-root ?id life)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  life.clp 	life0   "  ?id "  jIvana)" crlf))
)

;@@@ Added by Nandini
;Sohan and a few friends just managed to escape with their lives.
;sohana Ora kuCa miwroM ne apanI jAna bacAne mem  basa saPala hue.
(defrule life2
(declare (salience 300))
(id-root ?id life)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?kri ?id)
(id-root ?kri escape)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  life.clp 	life2   "  ?id "  jAna)" crlf))
)

;@@@ Added by Nandini(16-1-14)
;The members of the Senate had been named in the Act and appointed for life. [via mail]
;sIneta ke saxasyoM ke kArya meM nAma xie gaye We Ora jivanakAla waka ke liye niyukwa kie gaye We.
(defrule life3
(declare (salience 400))
(id-root ?id life)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jivanakAla_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  life.clp 	life3  jivanakAla_waka)" crlf))
)

