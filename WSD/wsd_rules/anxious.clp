
(defrule anxious0
(declare (salience 5000))
(id-root ?id anxious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anxious.clp 	anxious0   "  ?id "  uwsuka )" crlf))
)

(defrule anxious1
(declare (salience 4900))
(id-root ?id anxious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anxious.clp 	anxious1   "  ?id "  cinwiwa )" crlf))
)

;"anxious","Adj","1.cinwiwa"
;He is anxious about his future.
;--"2.cinwA_karanevAlA"
;He is an anxious father.
;--"3.cinwAjanaka"
;We had a few anxious moments before the plane landed safely.
;--"4.uwsuka"
;They are anxious to know who will be the next Prime Minister.
;
;
;LEVEL 
;Headword : anxious
;
;Examples --
;
;"anxious","Adj","1.cinwiwa"
;He is anxious about his future.
;vaha apane BaviRya ke bAre meM cinwiwa hE.
;--"2.cinwA_karanevAlA"
;Ravi is an anxious father.
;ravi eka cinwA_karanevAlA piwA hE.
;--"3.cinwAjanaka"
;We had a few anxious moments before the plane landed safely.
;havAI jahAjZa ke surakRiwa rUpa se uwarane ke pahale hamane kuCa cinwAjanaka kRaNa biwAe.
;--"4.uwsuka"
;They are anxious to know who will be the next Prime Minister.
;ve yaha jAnane ko uwsuka hEM ki agalA praXAna manwrI kOna hogA.
;
;Upara xiye uxAharaNoM meM aMgrejZI kA eka viSiRta prayoga spaRtawaH xiKawA
;hE. aMgrejZI kA eka hI Sabxa viBinna kArakoM ke liye prayukwa ho sakawA hE.
;'anxious' eka 'viSeRaNa' Sabxa hE. yahI viSeRaNa alaga alaga saMxarBoM meM hinxI 
;meM alaga alaga rUpa le kara AwA hE -
;
;           cinwA+
;            |
;        cinwA_honA{viSiRta avasara yA viRaya para} -- BaviRya ke liye 'cinwiwa'
;            |
;        cinwA_karane_kI_prakqwivAlA -- 'cinwA_karanevAlA' piwA
;            |
;        cinwA_xenevAlA  -- 'cinwAjanaka' kRaNa
;
;cOWe uxAharaNa meM 'anxious' kA arWa 'uwsuka' A rahA hE jo 'cinwA' se aXika
;sambanXiwa nahIM lagawA. paranwu yaxi jisa prayoga meM yaha arWa AwA hE usa ora
;XyAna xeM wo xeKeMge ki yahAz BI isakA arWa 'cinwA' se judZA hE.
;yaxi kisI kArya ke prawi awyaXika uwsukawA rahawI hE wo usameM cinwA BI 
;SAmila ho jAwI hE. 
;isa Sabxa kA anwarnihiwa sUwra banegA
;
;anwarnihiwa sUwra ;
;cinwAjanaka --- cinwA_karanevAlA --cinwiwa --- uwsuka
;
;sUwra : cinwA+[>uwsuka]
;
