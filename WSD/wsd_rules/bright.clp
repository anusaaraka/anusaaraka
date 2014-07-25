
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
;He is a bright student.[shiksharthi]
;vaha eka hoSiyAra viXyArWI hE
(defrule bright3
(declare (salience 5000))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 boy|girl|student)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hoSiyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bright.clp    bright3   "  ?id "  hoSiyAra )" crlf))
)

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;The King was very pleased and rewarded his Prime Minister for his bright idea.[gyanannidhi]
;Added by Sheetal(17-09-09).
(defrule sh-bright
(declare (salience 5000))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 idea)
;(id-root =(+ ?id 1) idea);commented by Garima Singh
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZiyA)); meaning changed from 'wejasvI' to 'baDZiyA' by Garima Singh
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bright.clp    sh-bright   "  ?id "  baDZiyA )" crlf))
)
;She is full of bright ideas . 

(defrule bright0
(declare (salience 0));salience reduced by Garima Singh
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
(declare (salience 0));salience reduced by Garima Singh
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

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bright3
(declare (salience 5000))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 boy|girl|student)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hoSiyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bright.clp   sub_samA_bright3   "   ?id " hoSiyAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bright3
(declare (salience 5000))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 boy|girl|student)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hoSiyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " bright.clp   obj_samA_bright3   "   ?id " hoSiyAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sh-bright
(declare (salience 5000))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZiyA)); meaning changed from 'wejasvI' to 'baDZiyA' by Garima Singh
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sub_samA_sh-bright" ?id " baDZiyA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sh-bright
(declare (salience 5000))
(id-root ?id bright)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZiyA)); meaning changed from 'wejasvI' to 'baDZiyA' by Garima Singh
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " obj_samA_sh-bright" ?id " baDZiyA )" crlf))
)
