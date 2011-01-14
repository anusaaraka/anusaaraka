
(defrule class0
(declare (salience 5000))
(id-root ?id class)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  class.clp 	class0   "  ?id "  varga )" crlf))
)

(defrule class1
(declare (salience 4900))
(id-root ?id class)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vargIkaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  class.clp 	class1   "  ?id "  vargIkaraNa_kara )" crlf))
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
