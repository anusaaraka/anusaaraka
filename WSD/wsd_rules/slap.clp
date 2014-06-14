
;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################
;@@@ Added by Jagriti
;He slapped the newspaper down on the desk.[oald]
;उसने डेस्क पर पर समाचारपत्र पटक दिया . 
(defrule slap0
(declare (salience 5000))
(id-root ?id slap)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 down)
(kriyA-upasarga ?id ?id1)  
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pataka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " slap.clp slap0 " ?id "  pataka_xe )" crlf)) 
)
;@@@ Added by Jagriti
;She slapped a 1000 Rs bill into my hand.[oald]
;उसने मेरे हाथ में एक 1000 रुपए का बिल पटक दिया . 
(defrule slap1
(declare (salience 4900))
(id-root ?id slap)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pataka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " slap.clp slap1 " ?id "  pataka_xe )" crlf)) 
)
;@@@ Added by Jagriti
;........Default rule......
;He slapped me on the back and said `Congratulations!' 
;उसने पीठ पर मुझे चपट मारा और `बधाई कहा! '
(defrule slap2
(declare (salience 4800))
(id-root ?id slap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id capata_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " slap.clp slap2 " ?id " capata_mAra )" crlf)) 
)

