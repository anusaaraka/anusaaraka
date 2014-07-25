;@@@ Added by Krithika(26/11/2013)
;Algae are covered with tiny filaments. 
;kAI bahuwa sAre Cote reSoM ko samAviRta kie huye hEM. .
(defrule filament1
(declare (salience 100))
(id-root ?id filament)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ? ?id1)
(id-root ?id1 toothbrush|silk|cotton|fibre|plant|flower|seed|thread)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  filament.clp     filament1   "  ?id "  reSA )" crlf))
)

;_______________________________________________________________________________
;################### Default rules ####################
;Modified by Krithika(26/11/2013)
;Salience modified and rules removed
;Added by Meena(8.03.10)
;Thomas Edison tried two thousand different materials in search of a filament for the light bulb. [Old clp]
;WAmasa edisana ne vixyuwa balba ke lie PilAmeMta kI walASa meM xo hajAra viBinna paxArWoM kA parIkRaNa kiyA.

(defrule filament0
(id-root ?id filament)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PilAmeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  filament.clp     filament0   "  ?id "  PilAmeMta )" crlf))
)

;################### Additional Examples ####################
; Toothbrushes should be replaced when the filaments become worn. 
; A filament is a thin wire in a light bulb that glows when electricity passes through it. 
; The cable was made up of fine filaments twisted together.
; Flowers are covered with tiny filaments. 
