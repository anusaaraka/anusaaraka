

;Added by Sheetal(17-09-09).
(defrule sh-bright
(declare (salience 5001))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejasvI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bright.clp    sh-bright   "  ?id "  wejasvI )" crlf))
)
;She is full of bright ideas . 

(defrule bright0
(declare (salience 5000))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camakIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bright.clp 	bright0   "  ?id "  camakIlA )" crlf))
)

(defrule bright1
(declare (salience 4900))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camakIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bright.clp 	bright1   "  ?id "  camakIlA )" crlf))
)

;"bright","Adj","1.camakIlA"
;The sun was bright && hot
;Bright greens
;Bright silver candlesticks
;--"2.wejZa"
;Some children are brighter in one subject than another
;The bright sound of the trumpet section
;--"3.ujjvala"
;The room was bright && airy
;Had a bright future in publishing
;--"4.xIpwimAna"
;The bright stars of stage && screen
;Bright faces
;
;


;A bright career.
;She is an excellent student with a bright future.
;vaha eka #ujjavala BaviRya ke sAWa eka uwwama #vixyArWI hE
;Add by samapika(20.4.10)
(defrule bright2
(declare (salience 5400))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 future|career)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ujjvala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bright.clp    bright2   "  ?id "  ujjvala )" crlf))
)
