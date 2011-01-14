
(defrule fox0
(declare (salience 5000))
(id-root ?id fox)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lomadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fox.clp 	fox0   "  ?id "  lomadZI )" crlf))
)

(defrule fox1
(declare (salience 4900))
(id-root ?id fox)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paSopeSa_meM_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fox.clp 	fox1   "  ?id "  paSopeSa_meM_dAla )" crlf))
)

;"fox","V","1.paSopeSa_meM_dAlanA"
;He foxed every body with his behaviour.
;
;LEVEL 
;Headword : fox
;
;Examples --
;
;"fox","N","1.lomadZI" 
;The fox is known for its cunningness.
;lomadZI apanI XUrwawA ke lie jAnI jAwI hE. 
;"2.kapatI vyakwi"-kapatI Ora XUrwa vyakwi kI wulanA BI eka lomadZI se kI jAwI hE-
;lomadZI
;She is an old fox.
;vaha eka kapatI swrI hE.
;
;"fox","VT","1.paSopeSa meM dAlanA" 
;His game foxed me completely.
;usake Kela ne muJe pUrNawayA paSopeSa meM dAla xiyA. 
;<--jisa prakAra lomadZI cakamA xekara paSopeSa meM dAlawI hE usI prakAra se vyavahAra karanA
;                                                         
;nota:--uparokwa 'fox' Sabxa ke saMjFA Ora kriyA ke vAkyoM ke arWoM ko nimna
; prakAra se sUwra ke xvArA xiKA sakawe hEM  
;
;anwarnihiwa sUwra ;
;
;lomadZI -- lomadZI kI waraha cAlAka vyakwi -- lomadZI kI waraha vyavahAra karanA -paSopeSa meM dAlanA
;
;       sUwra : lomadZI`[>paSopeSa meM dAlanA]  
;
