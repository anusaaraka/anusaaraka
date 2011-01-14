
(defrule shaft0
(declare (salience 5000))
(id-root ?id shaft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id daNdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shaft.clp 	shaft0   "  ?id "  daNdA )" crlf))
)

(defrule shaft1
(declare (salience 4900))
(id-root ?id shaft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurvyavahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shaft.clp 	shaft1   "  ?id "  xurvyavahAra_kara )" crlf))
)

;"shaft","V","1.xurvyavahAra_karanA"
;It is not good to shaft a gentleman.
;
;LEVEL 
;Headword : shaft
;
;Examples --
;
;"shaft","N","1.daNdA"
;He had arrows with long shafts.
;usake wIra lambe daMde vAle We.
;--"2.hawWA"
;The shaft is strong enough in the hammer.
;haWOdZI kA hawWA kAPI majZabUwa hE.
;--"3.kiraNapuMja"
;The doctors worked under the shaft of bright lights.
;dOYktaroM ne wejZa roSanI ke kiraNapuMja meM kAma kiyA.
;--"4.suraMga{liPta_Axi_ke_liye}"
;The lift moved down the shaft of the mine.
;KAna kI suraMga se liPta nIce kI ora calI.
;
;"shaft","V","1.xurvyavahAra_karanA"
;It is not good to shaft a gentleman.
;kisI sajjana puruRa ke sAWa xurvyavahAra karanA acCA nahIM hE.
;
;
;ukwa uxAharaNoM se EsA lagawA hE ki aMgrejZI Sabxa 'shaft' eka asaMbanXiwa arWoM vAlA bahvArWI Sabxa hE. isakI vyuwpawwi xeKane para nimna sUcanA milawI hE :-
;
;   probably to L. scapus, Gr. Scape, Scepter, Shave.] 1. The slender,
;   smooth stem of an arrow; hence, an arrow.
;   [1913 Webster]
;   
;   That which resembles in some degree the stem or handle of an arrow
;   or a spear; a long, slender part, especially when cylindrical.
;   
;(e) The handle or helve of certain tools, instruments, etc., as a
;   hammer, a whip, etc. (f) A pole, especially a Maypole. [Obs.] Stow.
;   (GCIDE-online dictionary)
;
;vyuwpawwi ke wIna swaroM para isakA vikAsa spaRtawaH xiKAyI xewA hE. isakI
;uwpawwi lEtina  Sabxa 'scapus' se huyI jisakA arWa WA - wIra kA lambA pawalA
;vAlA hissA,
;
;Age cala kara  isakA prayoga kuCa EsI vaswuoM ke liye hone lagA jo Akqwi meM
;lambI pawalI WIM (daNde jEsI}, awaH haWOdZI Axi jEsI cIjZoM ke hawWe ke arWa
;meM isakA prayoga hone lagA.
;
;Ora Age cala kara EsI kiraNeM jo lambI pawalI xiKeM unake liye BI 'shaft' Sabxa
;prayoga hone lagA. isI sUwra meM 'lambe pawale mArga' ke liye yaha prayoga
;judZa gayA.
;
;isaprakAra asambanXiwa xiKanevAle saBI arWa eka wAra se judZe hue hEM. isa Sabxa
;ke bIjArWa ke liye hinxI meM koI pUrNawaH upayukwa Sabxa nahIM hE. awaH
;ise ekaprakAra kA 'daNdA' mAna sakawe hEM jo kisI upakaraNa kA 'avayava' ho. awaH
;isakA bIjArWa hogA
;'daNdA`{avayava}'
;
;isakA anwarnihiwa sUwra hogA -
;
;anwarnihiwa sUwra ;
;
;daNdA{avayava bANAxi kA} -- kisI upakaraNa ke aMSoM ko jodZane vAlA --Akqwi
;meM daNde jEsA xiKanevAlA
;
;shaft of an arrow -- shaft of a machine - light shaft, lift shaft,
;mine-shaft etc.
;
;
;sUwra : daNdA`{avayava}
