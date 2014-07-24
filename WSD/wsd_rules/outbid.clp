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

;@@@ Added by Pramila(BU) on 27-03-2014
;He outbade me by Rs. 200 at the auction.  ;shiksharthi
;नीलाम में उसने मुझसे २०० रुपया बढ़कर बोली लगाई.
(defrule outbid1
(declare (salience 5000))
(id-word ?id outbid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
(id-cat_coarse ?id2 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZakara_bolI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " outbid.clp 	outbid1   "  ?id " baDZakara_bolI_lagA )" crlf)
))


;------------------default rules------------------
;@@@ Added by Pramila(BU) on 27-03-2014
;It is hard to outbid your enemies.  ;shiksharthi
;तुम्हारे शत्रुओं को मात देना कठिन है.
(defrule outbid2
(declare (salience 100))
(id-word ?id outbid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAwa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " outbid.clp 	outbid2   "  ?id "  mAwa_xe )" crlf)
))

;@@@ Added by Pramila(BU) on 27-03-2014
(defrule outbid3
(declare (salience 0))
(id-word ?id outbid)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAwa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " outbid.clp 	outbid3   "  ?id "  mAwa_xe )" crlf)
))


