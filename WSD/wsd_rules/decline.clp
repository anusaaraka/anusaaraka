
(defrule decline0
(declare (salience 4000))
(id-root ?id decline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decline.clp 	decline0   "  ?id "  pawana )" crlf))
)

;"decline","N","1.pawana/kRaya"
;A decline was noticed in the sales of the engine.
;

;$$$ Modified by Pramila(Banasthali university) on 04-01-2014
;Price are declining.
;कीमतें कम हो रही है.
;meaning changed from "manA_kara" to "kama_ho"
(defrule decline1
(declare (salience 4000))
(id-root ?id decline)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decline.clp 	decline1   "  ?id "  kama_ho )" crlf))
)

;"decline","V","1.manA_karanA"
;He might decline to accept the offer.
;--"2.kRINa_ho_jAnA"
;She met with a big accident in the declining years of her life.
;


;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;There is a sharp decline in the rate of interest.   ;shiksharthi
;ब्याज की दर में भारी गिरावट आई है.
(defrule decline2
(declare (salience 5000))
(id-root ?id decline)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decline.clp 	decline2   "  ?id "  girAvata )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;The minister has declined to make a statement.     ;shiksharthi
;मंत्री ने बयान देने से इंकार कर दिया है.
;He might decline to accept the offer.        ;old clp
;वह प्रस्ताव स्वीकार करने से इंकार कर सकता है.
(defrule decline3
(declare (salience 5000))
(id-root ?id decline)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id inakAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decline.clp 	decline3   "  ?id "  inakAra_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;His health has declined.       ;shiksharthi
;उसका स्वास्थय गिर गया है.     
(defrule decline4
(declare (salience 5000))
(id-root ?id decline)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 health)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decline.clp 	decline4   "  ?id "  gira )" crlf))
)
