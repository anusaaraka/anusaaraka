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
;We defer to the superior's judgement.      ;shiksharthi
;हम वरिष्ठ जनों के निर्णयों का सम्मान करते हैं.
(defrule defer1
(declare (salience 4900))
(id-root ?id defer)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defer.clp 	defer1   "  ?id " sammAna_kara )" crlf))
)

;---------------------default rules-------------------------------

;@@@ Added by Pramila(Banasthali university) on 04-01-2014
;The action should be deferred for some time.   ;shiksharthi
;कुछ समय तक कार्रवाई स्थगित कर देनी चाहिए.
(defrule defer2
(declare (salience 4000))
(id-root ?id defer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWagiwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  defer.clp 	defer2   "  ?id " sWagiwa_kara_xe )" crlf))
)
