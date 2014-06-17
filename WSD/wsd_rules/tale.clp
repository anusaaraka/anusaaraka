;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore
;I do not believe these tales..[gayannidhi]
;मैं इन कहानियों  पर विश्वास नहीं करता हूँ .  
(defrule tale0
(declare (salience 5000))
(id-root ?id tale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 believe)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  kahAnI))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tale.clp 	tale0   "  ?id "   kahAnI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  tale.clp     tale0   "  ?id " para )" crlf)
)
)

;@@@ Added by Prachi Rathore
;I've heard tales of people seeing ghosts in that house.[oald]
;मैं उस घर में लोगों के  भूतों को देखने के  किस्से सुन चुका हूँ . 
(defrule tale1
(declare (salience 5000))
(id-root ?id tale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-for_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  kissA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tale.clp 	tale1   "  ?id "   kissA )" crlf)
)
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore
;A fairy tale.[oald]
;एक परियों की कहानी . 
(defrule tale2
(declare (salience 4000))
(id-root ?id tale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tale.clp 	tale2   "  ?id "  kahAnI )" crlf))
)
