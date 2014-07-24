;@@@ Added by Preeti(21-1-14)
;See me after class. [Oxford Advanced Learner's Dictionary]
;kakRA ke bAxa muJase milie.
(defrule class2
(declare (salience 5060))
(id-root ?id class)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa  ?id ?) (kriyA-subject  ? ?id) (viSeRya-in_saMbanXI  ? ?id) (viSeRya-of_saMbanXI  ? ?id) (kriyA-after_saMbanXI  ? ?id) (kriyA-in_saMbanXI  ? ?id) (kriyA-for_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kakRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  class.clp 	class2   "  ?id "  kakRA )" crlf))
)
;@@@ Added by Preeti(21-1-14)
;She is a real class performer. [Oxford Advanced Learner's Dictionary]
;vaha eka buwa hI acCI aBinewA hE.
(defrule class3
(declare (salience 5050))
(id-root ?id class)
?mng <-(meaning_to_be_decided ?id)
(or(id-cat_coarse ?id adjective) (id-cat_coarse =(+ ?id 1) noun))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  class.clp 	class3   "  ?id "  acCA )" crlf))
)

;$$$ Modified mng from 'varga' to 'SreNI' by Preeti 29-01-14.
;Ex:He always travels business class. 
(defrule class0
;(declare (salience 5000))
(id-root ?id class)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SreNI));meaning changed by Preeti
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  class.clp 	class0   "  ?id "  SreNI )" crlf))
)

;$$$ Modified mng from 'vargIkaraNa_kara' to 'vargIkqwa_kara' by Preeti 29-01-14. 
;Ex: I wouldn't have classed you as a Shakespeare fan.
(defrule class1
;(declare (salience 4900))
(id-root ?id class)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vargIkqwa_kara));meaning changed by Preeti
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  class.clp 	class1   "  ?id "  vargIkqwa_kara )" crlf))
)

;"class","V","1.vargIkaraNa_karanA"
;Words in the dictionary are classed invarious grammatical categories.
;
;LEVEL 
;
;
;               `class' sUwra (nibanXa)
;               -------
;
;`class' Sabxa ke viviXa prayoga--  
;-------------------------
;
;"class","N","1.varga"
;I belong to the middle class.
;
;--"2.SreNI" ----< vaha SreNI jo eka viSiRta varga ke liye hE ---< varga
;I travel in second-class compartment of the train.
;
;--"3.kakRA" ----< vixyArWiyoM kA eka viSiRta varga ----< varga
;My collegue && I had studied in the same class.
;
;--"4.jAwi" ---- < varga
;Whales belong to the mammal class.
;
;--"5.viSeRawA" ---- < viSeRa kAraNoM se varga kI pqWakawA < varga
;Hardy was in a different class from his contemperories.
;
;--"6.SreRTawA" ---- < viSeRawA < viSeRa kAraNoM se varga kI pqWakawA < varga
;Our football team lacks class.
;
;"class","V","1.vargIkaraNa_karanA" ---- < varga`      
;Words in the dictionary are classed invarious grammatical categories.
;------------------------------------------------------------------------
;
;sUwra : kakRA`[<varga`]
;---------
;
;sUwra mAwra 
;
;varga`   
;
;kyoM nahIM ?
;
;      `class' Sabxa ke upara ke viBinna prayogoM ke mUla meM varga Sabxa ko socA jA 
;sakawA hE . varga se wAwparya- eka EsA pqWak samUha, jo kinhIM kAraNoM se alaga parigaNiwa
;howA hE . isa xqRti se isa Sabxa ko upariliKiwa viBinna vargoM ke rUpa meM rUDa xeKA
;jA sakawA hE . 
;
;-- kakRA, SreNI, jAwi viBinna varga hEM . apane-apane kinhIM viSeRa kAraNoM se ye 
;xUsaroM se apanI-apanI pqWakawA banAye hue hEM . 
;   
;-- viSeRawA . kinhIM viSeRa kAraNoM se varga kI pqWakawA hE, awaH viSeRawA ke lie
;
;BI isakA prayoga Ama ho gayA lagawA hE .
;
;-- SreRTawA . kinhIM viSiRta XyAwavya kAraNoM se SreRTawA mAnI jAwI hE . isa 
;waraha varga se viSeRawA, viSeRawA se SreRTawA kI kadiyAz jodI jA sakawI hEM . 
;
;-- saMjFArUpa meM varga hE, isalie isakA kriyArUpa vargIkaraNa karanA ho gayA prawIwa 
;howA hE .   
;
;
