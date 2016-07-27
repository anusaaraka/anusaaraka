;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;He declaimed against the dowry.         ;shiksharthi
;उसने दहेज-प्रथा की निंदा की.
(defrule declaim1
(declare (salience 4900))
(id-root ?id declaim)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?id1)
(id-word =(+ ?id 1) against)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) kI_niMxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " declaim.clp	declaim1  "  ?id "  " (+ ?id 1) "  kI_niMxA_kara  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;He declaimed against the evils of alcohol.      ;oald
;उसने शराब की बुराइयों के खिलाफ भाषण दिया.
(defrule declaim2
(declare (salience 5000))
(id-root ?id declaim)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BARaNa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  declaim.clp 	declaim2   "  ?id " BARaNa_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;She declaimed the famous opening speech of the play.       ;oald
;उसने खेल का प्रसिद्ध उद्घाटन भाषण सुनाया
(defrule declaim3
(declare (salience 5000))
(id-root ?id declaim)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  declaim.clp 	declaim3   "  ?id " sunA )" crlf))
)


;--------------------default rules------------------------------------------------------
;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;The speaker declaimed his views on dowry.       ;shiksharthi
;वक्ता ने दहेज-प्रथा पर अपने विचार बताए.
(defrule declaim4
(declare (salience 4000))
(id-root ?id declaim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  declaim.clp 	declaim4   "  ?id " bawA )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;He gave a violent declaim against the Government.     ;shiksharthi
;उसने सरकार के विरूद्ध उग्र भाषण दिया.
(defrule declaim5
(declare (salience 4000))
(id-root ?id declaim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BARaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  declaim.clp 	declaim5   "  ?id " BARaNa )" crlf))
)
