
(defrule air0
(declare (salience 5000))
(id-root ?id air)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  air.clp 	air0   "  ?id "  havA )" crlf))
)

(defrule air1
(declare (salience 4900))
(id-root ?id air)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmane_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  air.clp 	air1   "  ?id "  sAmane_raKa )" crlf))
)

;default_sense && category=verb	havA xe	0
;"air","VT","1.havA xenA"
;Air the wet sheet to make it dry. 
;--"2.vyakwa_karanA"
;Don't air your views to every Tom,Dick && Harry.
;
;LEVEL 
;Headword : air
;
;Examples --
;
;"air","N","1.havA"
;Kick a football high in the air.
;PutabOYla ko havA meM UzcA uCAlo.
;--"2.havAI_jahAja"
;We went to Mumbai by air.
;vaha mumbaI havAI jahAjZa se gayA.  <--havA kA mArga <--havA
;--"3.BAva"
;That fort has an air of mystery about it.
;usa kile ke cAroM ora eka rahasya kA BAva hE. <--BAva <--rahasyamayI vAwAvaraNa <--havA
;--"4.AsamAna{Upara}"
;Patches of burnt forests were clearly visible from the air.
;jaMgala meM jale hue tukadZe AsamAna se sAPa xiKAI xe rahe We. <--Upara AsamAna<--AsamAna meM havA
;
; sUwra : havA`
