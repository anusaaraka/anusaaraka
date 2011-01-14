
(defrule preface0
(declare (salience 5000))
(id-root ?id preface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAkkaWana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  preface.clp 	preface0   "  ?id "  prAkkaWana )" crlf))
)

;"preface","N","1.prAkkaWana"
;The preface of the book which I red recently was very touching.
;
(defrule preface1
(declare (salience 4900))
(id-root ?id preface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AmuKa_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  preface.clp 	preface1   "  ?id "  AmuKa_liKa )" crlf))
)

;"preface","V","1.AmuKa_liKanA"
;In our English text book each chapter is prefaced by an apposite quotation.
;--"2.prAraMBa_honA_yA_karanA"
;She prefaced her talk by addressing the chairman.
;
