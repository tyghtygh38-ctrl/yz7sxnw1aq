-- https://discord.gg/MTcNHxbfUA is better
pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ccrrrr1/CCHub/refs/heads/main/api/loader_not_supported"))()
end)
return({jF=function()return function()local M=_G.v3_esp_settings;
local P=M.box_thickness;
local L=P*2;
local t=M.fill_opacity;
for B,B in pairs(_G.v3_esp_boxes)do
    if B.main then
        B.outer_os.Color=M.outline_color;
        B.outer_os.Thickness=L;
        B.inner_ist.Thickness=P;
        if M.filled then
            if M.box_type=="\114\x61\105nbo\119"then
                update_rainbow(B.fill,rainbow_offset);
            elseif M.box_type=='grad\x69\ent'then
                    local P={};
                    for L,A in ipairs(M.box_gradient)do
                        P[L]=ColorSequenceKeypoint.new((L-1)/(#M.box_gradient-1),A);
                    end
                    ;
                    B.fill.Color=ColorSequence.new(P);
                    B.fill.Transparency=NumberSequence.new(t);
                else B.fill.Color=ColorSequence.new(M.box_solid_color);
                    B.fill.Transparency=NumberSequence.new(t);
                end
                ;
                B.main.BackgroundTransparency=1-t;
            else B.main.BackgroundTransparency=1;
            end
            ;
            if M.show_health_bar then
                if M.health_bar_type=='rai\110\x62ow'then
                    update_rainbow(B.health_grad,rainbow_offset+0.3);
                elseif M.health_bar_type=="gr\97di\101nt"then
                        local P={};
                        for L,t in ipairs(M.health_gradient)do
                            P[L]=ColorSequenceKeypoint.new((L-1)/(#M.health_gradient-1),t);
                        end
                        ;
                        B.health_grad.Color=ColorSequence.new(P);
                    else B.health_grad.Color=ColorSequence.new(M.health_solid_color);
                    end
                    ;
                end
                ;
                if M.show_armor_bar then
                    if M.armor_bar_type=='\u{0072}\97in\98ow'then
                        update_rainbow(B.armor_grad,rainbow_offset+0.6);
                    elseif M.armor_bar_type=="\x67r\u{0061}\x64i\ent"then
                            local P={};
                            for L,t in ipairs(M.armor_gradient)do
                                P[L]=ColorSequenceKeypoint.new((L-1)/(#M.armor_gradient-1),t);
                            end
                            ;
                            B.armor_grad.Color=ColorSequence.new(P);
                        else B.armor_grad.Color=ColorSequence.new(M.armor_solid_color);
                        end
                        ;
                    end
                    ;
                    local P=M.text_colors;
                    local L=M.text_sizes;
                    local M=_G.v3_esp_font;
                    local t={{label=B.name_label,color=P.name,size=L.name},{label=B.health_text,color=P.health,size=L.health},{label=B.armor_text,color=P.armor,size=L.armor},{label=B.distance_label,color=P.distance,size=L.distance},{label=B.tool_label,color=P.tool,size=L.tool}};
                    for P,P in ipairs(t)do
                        if P.label then
                            P.label.TextColor3=P.color;
                            P.label.TextSize=P.size;
                            P.label.FontFace=M;
                        end
                        ;
                    end
                    ;
                end
                ;
            end
            ;
        end
        ;
    end,r=function(M)local P=M[3];
    local L=M[0];
    local t=M[1];
    local B=M[4];
    local A=M[2];
    local c=M[5];
    return function()if not _G.FORCEHIT.enabled then
        for M,M in pairs({'\84rac\e\u{0072}P\u{061}r\z t\48',"Trace\u{72}P\z  art1","\z B\e\97m"})do
            if L[M]then
                L[M]:Destroy();
            end
            ;
        end
        ;
        if L.FOVCircle then
            L.FOVCircle.Visible=false;
        end
        ;
        return;
    end
    ;
    if L.FOVCircle then
        L.FOVCircle.Visible=_G.FORCEHIT.showfov;
        if _G.ForcehitFOVPosition=="M\z \ous\x65"then
            L.FOVCircle.Position=Vector2.new(L.Mouse.X,L.Mouse.Y);
        else local M=Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/2);
            L.FOVCircle.Position=M;
        end
        ;
        L.FOVCircle.Radius=_G.FORCEHIT.fovradius;
        L.FOVCircle.Color=_G.FORCEHIT.tracercolor;
    end
    ;
    if _G.FORCEHIT.showfov and not L.locked_target_aimbot then
        local M=t();
        if M and A(M)then
            L.locked_target_aimbot=M;
            if _G.FORCEHIT.autoequip then
                c();
            end
            ;
        end
        ;
    end
    ;
    if L.locked_target_aimbot and A(L.locked_target_aimbot)then
        local M=L.LP.Character and L.LP.Character:FindFirstChild('\zHuma\110\111i\100\x52\u{06F}\u{06F}t\80art')and L.LP.Character.HumanoidRootPart.Position or workspace.CurrentCamera.CFrame.Position;
        local t=L.locked_target_aimbot.Character[_G.FORCEHIT.ragebot_target_part].Position;
        B(M,t);
        P(L.locked_target_aimbot);
    else L.locked_target_aimbot=nil;
        for M,M in pairs({'T\114\97cerP\97\z  r\x74\x30',"\84r\97c\x65\114\x50a\u{72}t1",'Be\97m'})do
            if L[M]then
                L[M]:Destroy();
            end
            ;
        end
        ;
    end
    ;
end
;
end,ud=function()return function(M)if not _G.v3_esp_settings.enabled then
    _G.v3_esp_gui.Enabled=false;
    return;
end
;
_G.v3_esp_gui.Enabled=true;
rainbow_offset=(rainbow_offset+M*_G.v3_esp_settings.fill_speed)%1;
local M=hash_settings();
if update_visuals_needed or M~=last_settings_hash then
    update_all_visuals();
    last_settings_hash=M;
    update_visuals_needed=false;
end
;
local M=lp.Character and lp.Character:FindFirstChild("\72um\x61\u{6E}\111\idR\x6F\111tPa\u{72}\z\x74");
if not M then
    return;
end
;
for P,P in ipairs(Players:GetPlayers())do
    if P==lp then
        continue;
    end
    ;
    local L=P.Character;
    if not L then
        cleanup(P);
        continue;
    end
    ;
    local t=L:FindFirstChildOfClass("Huma\x6E\u{006F}\105d");
    local B=L:FindFirstChild("Hum\97no\105d\z Ro\u{6F}\116\80\x61r\u{74}");
    if not t or not B or t.Health<=0 then
        cleanup(P);
        continue;
    end
    ;
    local A,c=L:GetBoundingBox();
    if not A then
        cleanup(P);
        continue;
    end
    ;
    local s=c/2*_G.v3_esp_settings.box_scale;
    local c=temp_corners;
    c[1]=A*Vector3.new(s.X,s.Y,s.Z);
    c[2]=A*Vector3.new(s.X,s.Y,-s.Z);
    c[3]=A*Vector3.new(s.X,-s.Y,s.Z);
    c[4]=A*Vector3.new(s.X,-s.Y,-s.Z);
    c[5]=A*Vector3.new(-s.X,s.Y,s.Z);
    c[6]=A*Vector3.new(-s.X,s.Y,-s.Z);
    c[7]=A*Vector3.new(-s.X,-s.Y,s.Z);
    c[8]=A*Vector3.new(-s.X,-s.Y,-s.Z);
    local A,s,O,E,D=1e9,1e9,-1.0E9,-1.0E9,false;
    for V=1,8 do
        local w,h=Camera:WorldToScreenPoint(c[V]);
        if h then
            D=true;
            A=math.min(A,w.X);
            s=math.min(s,w.Y);
            O=math.max(O,w.X);
            E=math.max(E,w.Y);
        end
        ;
    end
    ;
    if not D then
        local c=_G.v3_esp_boxes[P];
        if c then
            set_visible(c,false);
        end
        ;
        continue;
    end
    ;
    A,s,O,E=math.floor(A),math.floor(s),math.ceil(O),math.ceil(E);
    local c,D=O-A,E-s;
    if c<=0 or D<=0 then
        local V=_G.v3_esp_boxes[P];
        if V then
            set_visible(V,false);
        end
        ;
        continue;
    end
    ;
    local V=math.clamp(D*0.04,2,20);
    A+=V;
    s+=V;
    O-=V;
    E-=V;
    c,D=O-A,E-s;
    local V,V=100,180;
    if c>100 or D>180 then
        local V=math.min(100/c,180/D);
        c*=V;
        D*=V;
        local V,w=(A+O)/2,(s+E)/2;
        A,O=V-c/2,V+c/2;
        s,E=w-D/2,w+D/2;
    end
    ;
    local V=_G.v3_esp_boxes[P];
    if not V then
        V=create_box();
        _G.v3_esp_boxes[P]=V;
    end
    ;
    set_visible(V,true);
    local w=s-1;
    local h=D+2;
    local o=_G.v3_esp_settings.box_thickness;
    local z=o*2;
    V.outer.Position=UDim2.fromOffset(A-z,w-z);
    V.outer.Size=UDim2.fromOffset(c+z*2,h+z*2);
    V.main.Position=UDim2.fromOffset(A,s);
    V.main.Size=UDim2.fromOffset(c,D);
    V.inner.Position=UDim2.fromOffset(A+o,s+o);
    V.inner.Size=UDim2.fromOffset(c-o*2,D-o*2);
    local D=t.Health/t.MaxHealth;
    V.visual_health+=(D-V.visual_health)*0.15;
    local D=_G.v3_esp_settings.health_bar_width;
    local o=_G.v3_esp_settings.bar_spacing;
    if _G.v3_esp_settings.show_health_bar then
        V.health_bg.Position=UDim2.fromOffset(A-D-o,w);
        V.health_bg.Size=UDim2.fromOffset(D,h);
        local z=h*(1-V.visual_health);
        V.health_mask.Size=UDim2.fromOffset(D,z);
        V.health_mask.Position=UDim2.fromOffset(0,h-z);
        if _G.v3_esp_settings.show_health_text then
            V.health_text.Text=tostring(math.floor(t.Health));
            V.health_text.Position=UDim2.fromOffset(A-D-o-28,w+z/2-5);
            V.health_text.Size=UDim2.fromOffset(22,10);
        end
        ;
    end
    ;
    local t=0;
    local z=L:FindFirstChild("\u{0042}\x6Fd\yE\u{66}\x66\101\x63ts");
    if z then
        local R=z:FindFirstChild('Ar\109or');
        if R and R:IsA('I\110tVa\108ue')then
            t=R.Value;
        end
        ;
    end
    ;
    local z=math.clamp(t/100,0,1);
    V.visual_armor+=(z-V.visual_armor)*0.15;
    if _G.v3_esp_settings.show_armor_bar then
        V.armor_bg.Position=UDim2.fromOffset(O+o,w);
        V.armor_bg.Size=UDim2.fromOffset(D,h);
        local z=h*(1-V.visual_armor);
        V.armor_mask.Size=UDim2.fromOffset(D,z);
        V.armor_mask.Position=UDim2.fromOffset(0,h-z);
        if _G.v3_esp_settings.show_armor_text then
            V.armor_text.Text=tostring(t);
            V.armor_text.Position=UDim2.fromOffset(O+o+D+6,w+z/2-5);
            V.armor_text.Size=UDim2.fromOffset(22,10);
        end
        ;
    end
    ;
    if _G.v3_esp_settings.show_name then
        V.name_label.Text=P.Name..' \124\x20'..P.DisplayName;
        V.name_label.Position=UDim2.fromOffset(A-2,s-18);
        V.name_label.Size=UDim2.fromOffset(c+4,_G.v3_esp_settings.text_sizes.name);
    end
    ;
    local P=nil;
    if _G.v3_esp_settings.show_tool then
        for t,t in pairs(L:GetChildren())do
            if t:IsA("\Too\u{006C}")then
                P=t.Name;
                break;
            end
            ;
        end
        ;
    end
    ;
    if P~=V.last_tool then
        V.last_tool=P;
    end
    ;
    local L=E+4;
    if _G.v3_esp_settings.show_tool and P then
        V.tool_label.Text=P;
        V.tool_label.Position=UDim2.fromOffset(A-2,L);
        V.tool_label.Size=UDim2.fromOffset(c+4,_G.v3_esp_settings.text_sizes.tool);
        L+=_G.v3_esp_settings.text_sizes.tool+2;
    else V.tool_label.Visible=false;
    end
    ;
    if _G.v3_esp_settings.show_distance then
        local P=math.floor((M.Position-B.Position).Magnitude*0.28);
        V.distance_label.Text=P.."m";
        V.distance_label.Position=UDim2.fromOffset(A-2,L);
        V.distance_label.Size=UDim2.fromOffset(c+4,_G.v3_esp_settings.text_sizes.distance);
    end
    ;
end
;
end
;
end,sD=function(M,M,P,L,t,B,A)M=t[0x0__24]()-0x06e14;
L=(nil);
B=(nil);
P=nil;
A=(63);
while true do
    if A==63 then
        L=t[0X20](M);
        A=(0b0010010);
        continue;
    else if A==18 then
            A=73;
            B=t[0x20](M);
        else if A~=73 then
            else P=t[0x20](M);
                break;
            end
            ;
        end
        ;
    end
    ;
end
;
return M,P,B,A,L;
end,Pd=function()return function(M,P)if P then
    return;
end
;
if not _G.syhooks_fake_pos_enabled_LOLLLLLLLLLLLLLLLLLLLrealoneishideenidiot then
    return;
end
;
if not _G.syhook_tried_and_failed_key_LOLLL then
    return;
end
;
if M.KeyCode~=_G.syhook_tried_and_failed_key_LOLLL then
    return;
end
;
_G.syhook_take_the_l_wheres_fpLOLLL=not _G.syhook_take_the_l_wheres_fpLOLLL;
safefflag('\u{04E}\z  e\x78\u{74}Ge\x6E\82e\pli\catorE\110ab\z  le\100\u{57}r\105t\1014',_G.syhook_take_the_l_wheres_fpLOLLL and'\116\z  r\117e'or"\z\x66\x61\l\115e");
if game:GetService('\z \80\z la\u{0079}e\114s').LocalPlayer.Character and game:GetService("Pla\121e\u{0072}s").LocalPlayer.Character:FindFirstChild('Human\z oi\z  \100')then
    game:GetService('Pl\97\121e\x72\u{0073}').LocalPlayer.Character.Humanoid.Health=0;
end
;
Library:Notify(_G.syhook_take_the_l_wheres_fpLOLLL and"fa\u{6B}\x65\zp\u{6F}\x73iti\z  on\x20en\97b\x6C\101d \111n\32r\u{0065}\zspa\119n"or"\102a\x6Be\112o\z \u{73}\u{69}tion\32\x64\u{069}\sab\led \u{06F}n \x72\101sp\97wn",1.5);
end
;
end,T=function()return function(M)if M.Character and not M.Character:FindFirstChild("GR\u{041}B\BIN\x47\95\67O\78\z  \x53TRA\73\78\84")then
    ReplicatedStorage.MainEvent:FireServer('Gr\97bbing',false);
end
;
end
;
end,Cd=function()return function(M)if not _G.esp_chams_original_decals[M]then
    _G.esp_chams_original_decals[M]=M.Transparency;
end
;
end
;
end,Qd=function()return function(M)local P=M.KeyCode;
if P==Enum.KeyCode.W then
    CCRSuperHeroFly.Keys.w=false;
end
;
if P==Enum.KeyCode.A then
    CCRSuperHeroFly.Keys.a=false;
end
;
if P==Enum.KeyCode.S then
    CCRSuperHeroFly.Keys.s=false;
end
;
if P==Enum.KeyCode.D then
    CCRSuperHeroFly.Keys.d=false;
end
;
end
;
end,AD=function(M,P,L,t,B,A)local c;
while true do
    c,B=M:KD(P,t,B);
    if c==0xB9F9 then
        continue;
    else if c==50306 then
            break;
        end
        ;
    end
    ;
end
;(t)[0b100111]=(function(...)local P=t[0X19]("#",...);
if P~=0X0 then
else return P,t[0X1b];
end
;
return P,{...};
end);
,oF=function(M)local P=M[1];
            local L=M[0];
            return function()if P[3][P[2]]and P[3][P[2]].Parent then
                P[3][P[2]]:Destroy();
            end
            ;
            L();
        end
        ;
    end,TF=function(M)local P=M[0];
    return function()while task.wait(0.5)do
        if _G.ragebot_active and not P[3][P[2]](akpl)then
            buy();
            check_and_buy();
        end
        ;
    end
    ;
end
;
end,J=function()return function()if holding_fire and _G.rapidfire then
    local M=player.Character and player.Character:FindFirstChildOfClass("T\111o\z\108");
    if M and M:FindFirstChild("\u{0041}m\109\111")then
        pcall(M.Activate,M);
    end
    ;
end
;
end
;
end,fF=function(M)local P=M[0];
return function(M)Options.target_player_dropdown:SetValues(get_player_names());
if _G.target_player_names[M.Name]then
    P();
    Library:Notify(M.Name..' rej\z \x6Fine\u{064}\32and\x20\u{77}as\u{020}\u{0072}\x65\z \45\u{061}d\d\101d t\111\ ta\zrge\x74s',3);
end
;
end
;
end,B=function(M)local P=M[0];
local L=M[1];
return function(M,t)if M==Mouse and t=="Hi\z t"and CCRRageBotTable and CCRRageBotTable.target then
    local B=CCRRageBotTable.target;
    if char then
        local B=char:FindFirstChild(CCRRageBot.ragebot_target_part);
        local A=char:FindFirstChild('\72\u{075}\109\97noi\100\x52\111\zot\z \x50ar\z \u{074}');
        if B and A then
            local c=A.Velocity;
            local A=B.Position+(c*L);
            return CFrame.new(A);
        end
        ;
    end
    ;
end
;
return P(M,t);
end
;
end,zo=function(M)local P=M[0];
return function()local M=P.Character;
if not M then
    repeat
        task.wait();
        M=P.Character;
    until M and M:FindFirstChild("Hu\109an\111\105\100R\z\u{06F}otPa\114\u{0074}");
else task.wait(0.1);
end
;
if _G.v3_esp_settings.enabled then
    if not _G.v3_esp_boxes[P]then
        _G.v3_esp_boxes[P]=create_box();
    end
    ;
    update_visuals_needed=true;
    update_all_visuals();
end
;
end
;
end,NY=function(M,P,L,t,B)local A;
if not(t<=67)then
    if not(t<=0b11100_10)then
        t=M:cY(B,t,P);
        return 0X9dF4,t;
    else P[19]=M.nY;
        if not(not B[26425])then
            t=(B[26425]);
        else t=40+(M.QZ((M.xZ(M.CY[0x1]))+M.CY[0X1_]-B[5826]));(B)[0X6739]=(t);
        end
        ;
        return 40436,t;
    end
    ;
else A,t=M:DY(L,P,t,B);
    if A~=0xBD47 then
    else return 31913,t;
    end
    ;
end
;
return nil,t;
end,CZ=function(M)return;
end,i=function(M)local P=M[0];
local L=M[1];
return function()if not _G.aimbot or not aimbot_enabled then
    return;
end
;
ragebot_target_part_name=_G.aimbotPart or"Hea\100";
targetPlayer=nil;
if _G.aimbotMode=='\u{063}a\x6D\x6Coc\k'then
    targetPlayer=locked_target_aimbot;
    if not targetPlayer or not targetPlayer.Character then
        locked_target_aimbot=nil;
        aimbot_enabled=false;
        return;
    end
    ;
elseif _G.aimbotMode=='st\u{69}c\x6B\121\x61i\zm'then
        if current_sticky_aim_target and current_sticky_aim_target.Character and current_sticky_aim_target.Character:FindFirstChild(ragebot_target_part_name)then
            local M=current_sticky_aim_target.Character[ragebot_target_part_name];
            local t,B=Camera:WorldToViewportPoint(M.Position);
            local A=(Vector2.new(t.X,t.Y)-Vector2.new(mouse_pos.X,mouse_pos.Y)).Magnitude;
            if B and A<=(_G.aimbotStickyRadius or 100)and(not wallblocked(Camera.CFrame.Position,M)or not _G.aimbotWallCheck)then
                targetPlayer=current_sticky_aim_target;
            else current_sticky_aim_target=nil;
            end
            ;
        end
        ;
        if not current_sticky_aim_target then
            current_sticky_aim_target=L();
            targetPlayer=current_sticky_aim_target;
        end
        ;
        if not targetPlayer then
            return;
        end
        ;
    else return;
    end
    ;
    local M=targetPlayer.Character and targetPlayer.Character:FindFirstChild(ragebot_target_part_name);
    if M then
        local L=M.Position;
        if _G.aimbotPrediction then
            local t=P(M,0.15);
            if t then
                L=t;
            end
            ;
        end
        ;
        if _G.aimbotMode=='\115ti\x63k\x79\x61i\109'then
            local M=Camera.CFrame;
            local P=CFrame.new(M.Position,L);
            local t=_G.aimbotSmoothness or 0.25;
            Camera.CFrame=M:Lerp(P,t);
        elseif _G.aimbotMode=="\z \u{063}\97m\108\111\z c\107"then
                Camera.CFrame=CFrame.new(Camera.CFrame.Position,L);
            end
            ;
        end
        ;
    end
    ;
end,hD=function(M,M,P)P=M[0B11110]();
return P;
end,IF=function()return function(...)if not _G.shotnotificationenabled then
    return;
end
;
local M={...};
if M[1]=="C\u{6C}\u{069}\u{65}\x6EtB\117\z  l\x6C\u{065}t"then
    astl_hit_part=M[6];
    if typeof(astl_hit_part)=='\73n\115\x74a\x6E\99\z\101'and astl_hit_part:IsDescendantOf(LocalPlayer.Character)then
        astl_shooter_char=M[2];
        astl_shooter=Players:GetPlayerFromCharacter(astl_shooter_char);
        if astl_shooter and astl_shooter~=LocalPlayer and not istrgonwhitelistlist(astl_shooter)then
            if not _G.shotnotificationhandled[astl_shooter.Name]then
                _G.shotnotificationhandled[astl_shooter.Name]=true;
                new_dropdown_values={};
                for M,P in pairs(Options.target_player_dropdown.Value or{})do
                    new_dropdown_values[M]=P;
                end
                ;
                new_dropdown_values[astl_shooter.Name]=true;
                Options.target_player_dropdown:SetValue(new_dropdown_values);
                Library:Notify(astl_shooter.Name..'\x20wa\z s \97\x64\100\101d\u{0020}to targ\u{065}\zt\115\32list',3);
                _G.target_player_v3={};
                for M,P in pairs(new_dropdown_values)do
                    if P then
                        if game.Players:FindFirstChild(M)then
                            table.insert(_G.target_player_v3,game.Players:FindFirstChild(M));
                        end
                        ;
                    end
                    ;
                end
                ;
            end
            ;
        end
        ;
    end
    ;
end
;
end
;
end,m=function(M)local P=M[3];
local L=M[1];
local t=M[0];
local B=M[2];
return function(M,A)if A then
    return;
end
;
local A=(M.UserInputType==Enum.UserInputType.Keyboard and M.KeyCode)or M.UserInputType;
if A==_G.FORCEHIT.keybind and _G.FORCEHIT.enabled then
    if B.locked_target_aimbot then
        B.locked_target_aimbot=nil;
    else local M=L();
        if M and t(M)then
            B.locked_target_aimbot=M;
            if _G.FORCEHIT.autoequip then
                P();
            end
            ;
        end
        ;
    end
    ;
end
;
end
;
end,go=function()return function()if tonumber(game:GetService("Pla\y\x65\u{72}\z  \u{73}").LocalPlayer:WaitForChild('D\x61\x74\z \97F\x6F\x6C\de\114'):WaitForChild("I\x6E\102or\x6D\z ation"):WaitForChild("Jai\x6C").Value)>0 and tonumber(game:GetService("Pl\z \97yer\u{73}").LocalPlayer:WaitForChild('\u{0044}a\u{74}aFo\108der'):WaitForChild("Inf\z \111\x72m\97\u{0074}i\111n"):WaitForChild('J\97il').Value)<250 then
    if not game:GetService('Pl\97ye\114s').LocalPlayer.Backpack:FindFirstChild('\u{05B}\75\101\y\93')and not game:GetService('\x50l\u{0061}yer\x73').LocalPlayer.Character:FindFirstChild('[Ke\u{79}]')then
        v3_buy_item(buy_functions["\x5B\u{004B}e\u{79}\z  ]"]);
    else if game:GetService("P\z \l\u{061}\121ers").LocalPlayer.Backpack:FindFirstChild("[\u{4B}ey]")then
            game:GetService('P\z  l\z  ay\zer\115').LocalPlayer.Character:WaitForChild("H\z  \u{075}m\97n\o\u{069}\100"):EquipTool(game:GetService('Pl\u{0061}ye\114s').LocalPlayer.Backpack:FindFirstChild('[K\101\x79]'));
        else game:GetService("Pl\97\121e\u{072}s").LocalPlayer.Character:FindFirstChild("[K\101\y]"):Activate();
        end
        ;
    end
    ;
end
;
end
;
end,MY=function(M,P,L)P=(0X43+(M.RZ((M.iZ(L[22897],M.CY[0b1_10]))-M.CY[0B110]-L[29493],(L[0X0_0432__F]))));(L)[18899]=(P);
return P;
end,qo=function(M)local P=M[0];
return function()if not _G.auto_fire_armor then
    return;
end
;
if not P(game.Players.LocalPlayer)then
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("H\117\109ano\x69d")and game.Players.LocalPlayer.Character:FindFirstChildOfClass('\zHuma\z\110o\105\x64').Health<=0 then
        repeat
            task.wait();
        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('\72\117\m\97\u{06E}\111i\u{064}\82\111\z otP\u{0061}\u{0072}\z t')and game.Players.LocalPlayer.Character:FindFirstChildOfClass('\zH\u{075}\109a\110\111i\100').Health>0;
    elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("BodyEf\102e\z\99ts")and game.Players.LocalPlayer.Character.BodyEffects:FindFirstChild('\70\105\u{0072}\101Ar\z m\x6F\u{0072}')and typeof(game.Players.LocalPlayer.Character.BodyEffects.FireArmor.Value)=='num\98\u{065}r'and game.Players.LocalPlayer.Character.BodyEffects.FireArmor.Value<=100 then
            if not _G.auto_fire_armor_buy then
                _G.auto_fire_armor_buy=true;
                v3_buy_item(buy_functions["[Fi\u{72}\z e Ar\109or]"]);
                task.delay(2,function()_G.auto_fire_armor_buy=false;
            end);
        end
        ;
    end
    ;
end
;
end
;
end,wD=function(M,M,P,L)L=0X61;
P=#M;
return P,L;
end,PF=function()return function(M)if not _G.self_chams_original_decals[M]then
    _G.self_chams_original_decals[M]=M.Transparency;
end
;
end
;
end,mY=function(M,M,P)(P)[0X15]=nil;
P[0B10110]=nil;(P)[0X17]=(nil);
M=(0b1110010_);
return M;
end,Yo=function()return function(M)local P={};
if typeof(_G.target_player_v3)=='\116\u{0061}b\108e'then
    P=_G.target_player_v3;
elseif typeof(_G.target_player_v3)=="In\stance"then
        P={_G.target_player_v3};
    end
    ;
    if#P==0 then
        return;
    end
    ;
    speeccelapsed=speeccelapsed+M;
    if speeccelapsed>=5 then
        speeccelapsed=0;
        specccindex=specccindex+1;
        if specccindex>#P then
            specccindex=1;
        end
        ;
    end
    ;
    local M=P[specccindex];
    if M and M.Character and M.Character:FindFirstChild("\72um\u{0061}no\105\100Ro\u{06F}tPart")then
        local P=M.Character.HumanoidRootPart;
        Camera.CFrame=CFrame.new(P.Position+P.CFrame.LookVector*-10.0+Vector3.new(0,5,0),P.Position);
    end
    ;
end
;
end,Ko=function()return function()if not LocalPlayer.Character then
    return;
end
;
for M,M in ipairs(LocalPlayer.Character:GetChildren())do
    if M:IsA('To\x6Fl')and M:FindFirstChild("A\109\109o")and M.Ammo.Value==0 then
        game:GetService('Re\112l\z\u{69}cat\x65\d\z  \u{53}t\111\z  ra\x67e').MainEvent:FireServer("\u{052}\x65\u{006C}o\97\d",M);
    end
    ;
end
;
end
;
end,KY=setmetatable,Ao=function()return function()if game.Players.LocalPlayer.DataFolder.Currency.Value>=_G.auto_drop_money_amount then
    game.ReplicatedStorage.MainEvent:FireServer("D\114op\u{04D}\111n\e\x79",_G.auto_drop_money_amount);
end
;
end
;
end,VY=function(M,P,L,t)local B;
repeat
    B,P=M:lY(t,L,P);
    if B==0XB211 then
        break;
    else if B~=0Xeef__a then
        else continue;
        end
        ;
    end
    ;
until false;
t[0Xa]=M.KY;(t)[0XB]=nil;
t[0Xc]=nil;
t[0xd_]=(nil);
t[0B1110]=nil;
t[0B1111]=(nil);
return P;
end,xd=function(M)local P=M[0];
return function()CCRSuperHeroFly.Enabled=false;
task.wait(1);
P();
end
;
end,l=function(M)local P=M[0];
return function(M,...)local L=getnamecallmethod();
local t={...};
if not CCRRageBot.ragebote then
    return P[3][P[2]](M,...);
end
;
if L=='Invo\x6Be\83\e\114ver'and M.Name=="\zMa\z\105\z \x6E\F\117\110\99t\x69\z  \111n"and t[1]=="\x47u\z  n\u{0043}he\ck"then
    return nil;
end
;
if L=="F\i\u{072}\z  e\Ser\118er"and M.Name=='\z  \77\97\x69nEv\101nt'and t[1]=="Shoot"then
    local L=CCRRageBotTable.target and CCRRageBotTable.target.Character and CCRRageBotTable.target.Character[CCRRageBot.forcehit.ragebot_target_part];
    if L and t[2]and#t[2]>0 then
        for B,B in ipairs(t[2][1])do
            B.Instance=L;
        end
        ;
        for B,B in ipairs(t[2][2])do
            B.thePart=L;
            B.theOffset=CFrame.new();
        end
        ;
        SelectedTarget=L;
        return P[3][P[2]](M,unpack(t));
    end
    ;
end
;
return P[3][P[2]](M,...);
end
;
end,RD=function(M,M,P,L)(M[0X1C])[P+0x3]=(L);
end,rd=function()return function()local M=game.Players.LocalPlayer.Character;
if not M then
    return;
end
;
local P=M:FindFirstChildOfClass("\x48\x75m\97n\111\z i\x64");
if not P then
    return;
end
;
_G.__Bypass=true;
if _G.marcoinglolllisenabled then
    if P.WalkSpeed~=_G.basewalkspeedvalue then
        P.WalkSpeed=_G.basewalkspeedvalue;
    end
    ;
end
;
_G.__Bypass=false;
end
;
end,V=function(M)local P=M[0];
local L=M[1];
local t=M[2];
return function(M,B)if B or M.KeyCode~=CCRRageBot.ragebotk then
    return;
end
;
CCRRageBotTable.locked=not CCRRageBotTable.locked;
if CCRRageBotTable.locked then
    CCRRageBotTable.target=P();
    if not CCRRageBotTable.target then
        CCRRageBotTable.locked=false;
    end
    ;
else CCRRageBotTable.target=nil;
    t.Visible=false;
    if CCRRageBotTable.tracer then
        CCRRageBotTable.tracer.Visible=false;
    end
    ;
    for M,M in ipairs(L[3][L[2]])do
        M.Visible=false;
    end
    ;
    CCRRageBotTable.cam.CameraSubject=CCRRageBotTable.lp.Character;
    _G.server_indicator_cframe=nil;
end
;
end
;
end,Ld=function(M)local P=M[1];
local L=M[0];
return function()L(P);
end
;
end,ED=function(M,M,P,L)M=P/4;
L=(0x4a);
return L,M;
end,MD=function(M,M)M=0Xfb;
return M;
end,UZ=function(M,P,L,t)local B,A;
L=nil;
for c=86,0X17D,0B101111 do
    B,A,L=M:LZ(A,t,c,L);
    if B==44440 then
        continue;
    elseif B==58845 then
            break;
        else if B==-0B1 then
                return-0X1,P,L;
            end
            ;
        end
        ;
    end
    ;
    P=nil;
    return nil,P,L;
end,tF=function()return function(M)if custom_text then
    pcall(apply_text,M);
end
;
end
;
end,Fo=function()return function(M)if not _G.antieffects then
    if _G.antieffectsconn then
        _G.antieffectsconn:Disconnect();
        _G.antieffectsconn=nil;
    end
    ;
    return;
end
;
lasteffectlol=lasteffectlol+M;
if lasteffectlol>=10 then
    lasteffectlol=0;
    if game:GetService('\80lay\101\z \x72\s').LocalPlayer.Character and game:GetService("P\108ay\ers").LocalPlayer.Character:FindFirstChild('\z \x48\117m\x61\x6E\z  o\z  \x69\x64')and game:GetService('P\l\u{61}y\e\x72\z  s').LocalPlayer.Character.Humanoid:FindFirstChild("\x54\114a\105\108Eff\u{065}\ct\115")then
        game:GetService("\80\x6C\97\121ers").LocalPlayer.Character.Humanoid.TrailEffects:Destroy();
    end
    ;
    if game:GetService("\80\z  l\x61\z \u{79}e\x72s").LocalPlayer.PlayerGui:FindFirstChild("\z  \77\97inS\c\x72eenG\117i")then
        if game:GetService("Pl\z\u{0061}\121e\114s").LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild('\80\ep\x70erSp\114\97y')then
            game:GetService('P\u{6C}ay\u{65}r\z  s').LocalPlayer.PlayerGui.MainScreenGui.PepperSpray.Visible=false;
        end
        ;
        if game:GetService("P\l\z ay\101r\x73").LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild('SN\x4F\zW\66\65LLF\z  \u{52}AME')then
            game:GetService("\P\z la\z  ye\z\114\u{73}").LocalPlayer.PlayerGui.MainScreenGui.SNOWBALLFRAME.Visible=false;
        end
        ;
    end
    ;
end
;
end
;
end,YF=function()return function(M)if M then
    task.wait(1.4);
    apply_auras(M);
end
;
end
;
end,bF=function()return function()_G.tracker_last_ko_you=false;
end
;
end,To=function(M)local P=M[0];
return function()if not _G.auto_armor_high_e then
    return;
end
;
if not P(game.Players.LocalPlayer)then
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Bo\d\121\69\u{66}\102e\u{63}ts')and game.Players.LocalPlayer.Character.BodyEffects:FindFirstChild('\65r\109\111r')and typeof(game.Players.LocalPlayer.Character.BodyEffects.Armor.Value)=='\u{06E}\117\z  mber'and game.Players.LocalPlayer.Character.BodyEffects.Armor.Value<=100 then
        if not _G.auto_armor_high then
            _G.auto_armor_high=true;
            v3_buy_item(buy_functions['[Hi\u{0067}\u{0068}-Medi\117\u{06D}\32A\z\x72\109\u{6F}\z r]']);
            task.delay(2,function()_G.auto_armor_high=false;
        end);
    end
    ;
end
;
end
;
end
;
end,pZ=bit32.lrotate,nD=function(M,M,P,L,t)(t)[M]=P[0x5][L];
end,vF=function()return function()if not LocalPlayer.Character then
    return;
end
;
for M,M in ipairs(LocalPlayer.Character:GetDescendants())do
    if M:IsA("\B\x61se\P\u{061}\114t")and M.Name~='H\117ma\z  no\u{069}d\82o\111t\80\97r\116'then
        if not _G.auras_highlight_instances[M]then
            local P=Instance.new("\z  Hi\u{0067}\x68\li\103\u{068}t");
            P.Adornee=M;
            P.FillColor=_G.auras_highlight_color;
            P.FillTransparency=0.5;
            P.OutlineTransparency=0;
            P.OutlineColor=_G.auras_highlight_color;
            P.Parent=M;
            _G.auras_highlight_instances[M]=P;
        else _G.auras_highlight_instances[M].FillColor=_G.auras_highlight_color;
            _G.auras_highlight_instances[M].OutlineColor=_G.auras_highlight_color;
        end
        ;
    end
    ;
end
;
end
;
end,f=function()return function()if tick()%0.25<0.016 then
    ping=math.floor(game:GetService('P\u{006C}ayers').LocalPlayer:GetNetworkPing()*1000);
    workspace.FallenPartsDestroyHeight=0/0;
end
;
end
;
end,bY=string.char,iY=bit32.lshift,RZ=bit32.lshift,WF=function(M)local P=M[0];
return function()local M=tick();
local L={};
for t,B in ipairs(_G.hit_queue)do
    local A=Players:FindFirstChild(B.name);
    if A and A~=LocalPlayer and A.Character then
        current_health=P(A);
        last_health=_G.player_health_cache[A.UserId]or current_health;
        if current_health<last_health then
            last_hit=_G.hit_cooldowns[A.UserId]or 0;
            last_damager=A:FindFirstChild("B\111\100\u{079}E\102\z f\e\x63\116s")and A.BodyEffects:FindFirstChild('\x4Cas\z  t\u{0044}\97mage\u{0072}');
            if last_damager and last_damager.Value~=LocalPlayer.Name then
                _G.player_health_cache[A.UserId]=current_health;
            end
            ;
            if M-last_hit>=(_G.hit_offset or 0)then
                _G.hit_cooldowns[A.UserId]=M;
                local P={};
                if LocalPlayer.Character then
                    for c,c in ipairs(LocalPlayer.Character:GetChildren())do
                        if c:IsA("\z\x54ool")then
                            table.insert(P,c.Name);
                        end
                        ;
                    end
                    ;
                end
                ;
                local c;
                if#P==0 then
                    c='N\u{002F}\65';
                elseif#P==1 then
                        c=P[1];
                    elseif#P==2 then
                            c=P[1]..' \z &\32'..P[2];
                        else c=table.concat(P,', ');
                        end
                        ;
                        local P=math.floor(last_health-current_health);
                        if _G.hitsound then
                            local s=Instance.new('S\ou\u{006E}\u{064}');
                            s.SoundId=hit_sound_id[_G.v3_selected_hitsound]or hit_sound_id["\78\u{65}v\x65r\x4Cos\101"];
                            s.Volume=1;
                            s.Parent=workspace;
                            s:Play();
                            s.Ended:Connect(function()s:Destroy();
                        end);
                    end
                    ;
                    table.insert(_G.target_notification_information,{hittarget=A.Name:lower(),hit_part=B.part.Name:lower(),damage=P,weapon=c});
                    if _G.hit_effects_enabled then
                        for P,B in pairs(_G.hit_effects_enabled)do
                            if B then
                                V3_hit_effect(A,P);
                            end
                            ;
                        end
                        ;
                    end
                    ;
                    table.insert(L,t);
                end
                ;
            end
            ;
            _G.player_health_cache[A.UserId]=current_health;
        else table.insert(L,t);
        end
        ;
    end
    ;
    for P,P in ipairs(L)do
        table.remove(_G.hit_queue,P);
    end
    ;
    if _G.hitnotification then
        if#_G.target_notification_information>0 then
            for P=#_G.target_notification_information,1,-1.0 do
                local L=_G.target_notification_information[P];
                local t;
                if _G.custom_hit_notification and _G.custom_hit_notification_text and#_G.custom_hit_notification_text>0 then
                    t=_G.custom_hit_notification_text;
                    t=t:gsub("\x7B[Nn\z  \][\65a][Mm]\91Ee]\}",L.hittarget);
                    t=t:gsub("\123\z[Dd\u{005D}[\u{4D}\m]\91Gg]\}",tostring(L.damage));
                    t=t:gsub('\{\z [Pp]\91\u{41}\97]\z [\82r]\[\84\x74]}',L.hit_part);
                    t=t:gsub("{[Ww\]\91\69\z\u{065}\u{05D}\91Aa\93[\80\u{070}]\[\zO\z  o\]\x5BN\z  \110\z ]\z \125",L.weapon);
                else t="\104\105\x74\32"..L.hittarget.." f\o\z  r "..L.damage.."\32a\u{0074} "..L.hit_part..'\x20\w\x69th '..L.weapon;
                end
                ;
                Library:Notify(t,_G.hitnotification_duration or 3);
                table.remove(_G.target_notification_information,P);
            end
            ;
        end
        ;
    end
    ;
    for P=#_G.hit_effect_queue,1,-1.0 do
        local L=_G.hit_effect_queue[P];
        if L.player and L.player.Character and L.player.Character:FindFirstChild("\u{0055}ppe\zrTorso")and L.effect then
            if L.effect.PrimaryPart then
                L.effect:SetPrimaryPartCFrame(L.player.Character.UpperTorso.CFrame);
            end
            ;
            if M-L.start_time>=_G.hit_effect_lifetime then
                L.effect:Destroy();
                table.remove(_G.hit_effect_queue,P);
            end
            ;
        else if L.effect then
                L.effect:Destroy();
            end
            ;
            table.remove(_G.hit_effect_queue,P);
        end
        ;
    end
    ;
end
;
end,rF=function(M)local P=M[0];
return function()if not _G.bullet_tracers_enabled then
    return;
end
;
if P then
    for M,M in ipairs(P:GetChildren())do
        if M.Name=="B\x55LL\69T\z_\82\65\YS"and M:GetAttribute("Ow\110er\67\104\z \u{61}ract\u{65}\x72")==game.Players.LocalPlayer.Name then
            pcall(M.Destroy,M);
        end
        ;
    end
    ;
end
;
end
;
end,s=function()return function(M)return M.Character and M.Character:FindFirstChild('B\ody\z  Ef\102ec\zt\115')and M.Character.BodyEffects:FindFirstChild('\x53\68\x65\x61t\z  h')and M.Character.BodyEffects['\x53\68\101\x61t\104'].Value;
end
;
end,ID=function(M,M)return M;
end,C=function()return function(M)return M.Character and M.Character:GetAttribute('\67a\u{0072}r\x69\e\100')==true or false;
end
;
end,Lo=function(M)local P=M[0];
return function()if _G.anti_stomp and P:WaitForChild('H\z um\z\97n\u{6F}\u{69}\100').Health<51 then
    if anti_stomp_fling==true then
        P:BreakJoints();
        for M,M in ipairs({"He\z  a\100","U\z\112p\x65r\z T\o\z \u{0072}so",'\u{48}u\u{06D}an\z  o\105dRoo\116\80art','\z L\111\119\e\x72\84\111r\z  s\o',"\76e\u{0066}t\x48an\u{64}",'\z\x52i\103htHa\u{6E}d',"\Le\u{066}tL\x6F\x77\z \x65rA\u{72}m",'R\z\105g\u{0068}t\u{004C}o\119\zerArm',"Left\Up\x70e\u{072}\zA\u{0072}\z m","\z Ri\u{0067}ht\z  \Upp\101\114A\114\z \u{06D}","LeftF\u{6F}\x6F\z \u{074}",'\76ef\u{0074}Lowe\zr\76\x65g','\x4C\ef\u{074}\z U\p\pe\z  r\x4Ceg','\82\105\z \103\z h\x74\z \x4Co\x77\z er\z L\eg',"R\zig\zh\z t\z\70\o\u{06F}\116","\z  Rig\104\116\z Up\z pe\u{72}\76eg"})do
            local L=P:FindFirstChild(M);
            if L and L:IsA("\x42as\u{065}\z P\x61\114\x74")then
                L.CFrame=L.CFrame+Vector3.new(math.random(-999999.0,999999),math.random(200000,999999),math.random(-999999.0,999999));
            end
            ;
            P:WaitForChild("\x48\z  u\u{06D}a\z noid").Health=0;
            task.wait(0.2);
        end
        ;
    else P:WaitForChild('\x48\z \117\z man\z  oid').Health=0;
    end
    ;
end
;
end
;
end,g=function()return function()gun_data={};
for M,M in ipairs(_G.GunMethod)do
    local P,L;
    if M=='[\82if\u{06C}e\u{05D}'then
        P='\x5BRi\u{066}l\101\u{5D}';
        L='5 \[R\105\x66\108\u{065} A\109\x6Do\93';
    elseif M=="\[AUG]"then
            P="\u{05B}A\x55G\93";
            L='\0570\u{020}[\65UG \z \u{041}mm\111]';
        elseif M=='\[\70\108\i\zn\116\x6Co\99k\93'then
                P="[\x46\z l\i\110tloc\z  \107]";
                L='\54 \x5BFl\u{69}\u{006E}\u{074}loc\z k \u{041}m\z  m\z o\93';
            elseif M=='[\x4C\M\71\93'then
                    P="[LMG\93";
                    L='2\z\u{30}0\u{0020}\u{05B}\zLMG Am\109\x6F]';
                elseif M=="\z  \u{05B}\u{044}r\zumG\x75n]"then
                        P="[\68ru\109G\117n]";
                        L='100 \91D\x72u\z  mGun \A\z \x6D\u{006D}\111\93';
                    elseif M=="[\080\x39\48\u{05D}"then
                            P="[\u{50}\z  \u{039}0]";
                            L="1\z\u{032}0\32\[\u{0050}9\z0\u{020}Ammo\93";
                        else P=M;
                            L=nil;
                        end
                        ;
                        local t,B=nil,nil;
                        for A,A in ipairs(workspace.Ignored.Shop:GetChildren())do
                            if A:IsA('Mod\el')then
                                local c=A.Name;
                                if not t and c:sub(1,#P)==P then
                                    t=c;
                                end
                                ;
                                if L and not B and c:sub(1,#L)==L then
                                    B=c;
                                end
                                ;
                            end
                            ;
                        end
                        ;
                        if t or B then
                            gun_data[M]={gun=t,ammo=B};
                        end
                        ;
                    end
                    ;
                    return gun_data;
                end
                ;
            end,IY=function(M)local P=M[0];
            return function()nomoneyisleft=true;
            for M,M in pairs(game:GetService("W\111rks\u{070}ace").Ignored.Drop:GetChildren())do
                if M.Name=="Mon\u{65}\z \y\x44\114\op"and(M.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=12 then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(M.Position+Vector3.new(0,3,0));
                    fireclickdetector(M:FindFirstChild('\67lickD\u{0065}\z\x74e\u{63}\116\u{6F}\114'));
                    nomoneyisleft=false;
                    task.wait(0.1);
                end
                ;
            end
            ;
            local M=game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('\u{54}o\111\x6C');
            if M and M:FindFirstChild('Amm\111')and M.Ammo.Value<=15 then
                game.ReplicatedStorage.MainEvent:FireServer("R\x65\lo\z a\100",M);
            end
            ;
            if not P(15)then
                local M=game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool');
                game.ReplicatedStorage.MainEvent:FireServer("Re\u{06C}oa\z  d",M);
            end
            ;
        end
        ;
    end,ko=function(M)local P=M[0];
    local L=M[1];
    local t=M[2];
    return function()if not Grabbed then
        return;
    end
    ;
    local M=tostring(LocalPlayer.Character.BodyEffects.Grabbed.Value);
    P("\x72\98\zx\97s\115\u{065}\x74id:/\0473135\05189\u{031}57");
    if not L[3][L[2]]or(L[3][L[2]].AnimationId~='rb\120a\x73\zset\105d://1\0536\048\057\057955\x379')then
        if L[3][L[2]]then
            L[3][L[2]]:Stop();
        end
        ;
        local P=Instance.new("A\z  ni\109a\x74\105on");
        P.AnimationId='\z r\u{062}x\97ss\zeti\u{064}\58/\0471560\05799\x355\0559';
        local B=LocalPlayer.Character:FindFirstChildWhichIsA('H\z \117\109a\z\110oid');
        L[3][L[2]]=B and B:LoadAnimation(P);
        if L[3][L[2]]then
            L[3][L[2]].Priority=Enum.AnimationPriority.Action;
            L[3][L[2]]:Play();
            L[3][L[2]]:AdjustSpeed(0.5);
        end
        ;
    end
    ;
    RunService:UnbindFromRenderStep('Pos');
    local P=Players[M].Character;
    if not P then
        return;
    end
    ;
    local M=P:FindFirstChild("\85\x70\u{070}er\84o\114\z \115\x6F");
    if not M or not M:FindFirstChild("\x42\x6Fdy\z  P\u{6F}\x73\i\ztio\u{06E}")or not M:FindFirstChild("B\od\121\71y\114\u{06F}")then
        return;
    end
    ;
    M.BodyPosition.D=500;
    M.BodyPosition.Position=LocalPlayer.Character.HumanoidRootPart.Position+LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5+Vector3.new(0,2,0);
    M.BodyGyro.CFrame=CFrame.new(M.Position,LocalPlayer.Character.HumanoidRootPart.Position);
    moving=true;
    RunService:BindToRenderStep('T\ze\u{6C}\z  ek\105ne\115\105\s',0,function(L)if Grabbed and M and M:FindFirstChild('Bod\yPos\u{069}\x74i\111\110')and M:FindFirstChild('\z  B\u{006F}d\zy\71\z yr\x6F')then
        if moving then
            local B=workspace.CurrentCamera:ScreenPointToRay(Mouse.X,Mouse.Y);
            local A=RaycastParams.new();
            A.FilterDescendantsInstances={P,LocalPlayer.Character};
            A.FilterType=Enum.RaycastFilterType.Blacklist;
            local P=workspace:Raycast(B.Origin,B.Direction*1000,A);
            local A=P and P.Position or(B.Origin+B.Direction*1000);
            local P=LocalPlayer.Character.HumanoidRootPart.Position;
            local B=(A-P).Unit;
            t[3][t[2]]=P+B*25;
            local B=M.Position;
            local A=(t[3][t[2]]-B).Unit*320*L;
            M.BodyPosition.Position=B+A;
            M.BodyGyro.CFrame=CFrame.new(M.Position,P);
        end
        ;
    else RunService:UnbindFromRenderStep('\Tele\z \u{6B}\z i\u{006E}\z  \101\u{073}\x69\115');
        moving=false;
    end
    ;
end);
end
;
end,oY=function(M)local P=M[0];
return function()if P:GetAttribute("\u{043}o\111\z ld\111w\u{6E}")then
    return;
end
;
P:SetAttribute('C\zo\x6F\x6Cd\zow\x6E',true);
task.delay(1.5,function()P:SetAttribute('\C\111o\ldo\x77\u{06E}',nil);
end);
local M=char and char:FindFirstChild('H\x75m\97n\z\oi\u{64}R\111\z \111t\80\z \97rt');
if not char or not M then
    return;
end
;
local P=Mouse.Hit.Position;
local L=Instance.new("Atta\x63h\109\x65\z \110t",M);
local t=Instance.new("Att\x61c\u{0068}\m\z\101nt");
visualPart=Instance.new("\P\z ar\116");
visualPart.Anchored=true;
visualPart.CanCollide=false;
visualPart.Transparency=1;
visualPart.Position=P;
t.Parent=visualPart;
visualPart.Parent=workspace;
Debris=game:GetService('\D\ze\u{062}\114i\x73');
Debris:AddItem(visualPart,2);
rope=Instance.new("\z Be\u{61}m",visualPart);
rope.Attachment0=L;
rope.Attachment1=t;
rope.Color=ColorSequence.new(Color3.new(0,0,0));
rope.FaceCamera=true;
rope.Width0=0.2;
rope.Width1=0.2;
Debris:AddItem(rope,1);
local t=Instance.new("S\u{006F}u\110d",M);
t.SoundId='r\u{0062}x\u{061}s\u{0073}et\z  \x69d://8\u{39}\z\052\05639\056189\z \x34261';
t.Volume=2;
t.RollOffMode=Enum.RollOffMode.Inverse;
t.RollOffMaxDistance=100;
t:Play();
Debris:AddItem(t,2);
trail=Instance.new('\x54\x72\97\105l',M);
trail.Attachment0=L;
trail.Attachment1=L;
trail.Color=ColorSequence.new(Color3.new(0,0,0));
trail.Lifetime=0.3;
trail.MinLength=0.1;
Debris:AddItem(trail,1);
task.wait(0.2);
char:SetPrimaryPartCFrame(CFrame.new(P+Vector3.new(0,5,0)));
smoke=Instance.new("\80arti\x63\108\x65\zEmi\z  tte\114",M);
smoke.Texture='\u{072}\u{62}xa\115seti\u{64}:\x2F/\x32\0538\u{0031}\u{032}8\u{0034}6\z  \51';
smoke.Rate=300;
smoke.Lifetime=NumberRange.new(0.2);
smoke.Speed=NumberRange.new(25);
smoke.Size=NumberSequence.new(1);
smoke.Color=ColorSequence.new(Color3.new(0,0,0));
Debris:AddItem(smoke,1);
ring=Instance.new("P\x61\114t",workspace);
ring.Shape=Enum.PartType.Cylinder;
ring.Size=Vector3.new(0.2,6,6);
ring.Anchored=true;
ring.CanCollide=false;
ring.CFrame=CFrame.new(M.Position)*CFrame.Angles(math.pi/2,0,0);
ring.BrickColor=BrickColor.new("\u{0052}eal\108y \z \x62\z\x6C\x61ck");
ring.Material=Enum.Material.Neon;
ring.Transparency=0.2;
Debris:AddItem(ring,1);
pulse=Instance.new("Part",workspace);
pulse.Size=Vector3.new(1,0.05,1);
pulse.Anchored=true;
pulse.CanCollide=false;
pulse.CFrame=CFrame.new(M.Position+Vector3.new(0,0.1,0));
pulse.BrickColor=BrickColor.new('Re\x61ll\121\ \98la\99k');
pulse.Material=Enum.Material.Neon;
pulse.Transparency=0.3;
pulse.Shape=Enum.PartType.Ball;
Debris:AddItem(pulse,1);
end
;
end,rY=function(M,P)(P)[23]=(function(L)L=P[0Xc](L,'\122',"!\33!!\u{0021}");
return P[0Xc__](L,"\46..\46.",P[0B101__0__]({},{__index=function(L,t)local B,A,c,s,O=P[19](t,0B1,0X5);
local E=((O-33)+(s-0X21)*0B1010101+(c-0X21)*0x1c39+(A-33)*0X95EeD+(B-0B100001)*0X31C84B1);
O=P[4]('>\x49\52',E);(L)[t]=(O);
return O;
end
}));
end)(P[0Xf](M.dY,0x5));
end,Kd=function()return function()if not _G.esp_chams_enabled and not _G.esp_highlight_enabled then
    for M in pairs(_G.esp_chams_boxes)do
        clear_player(M);
    end
    ;
    remove_highlight();
    return;
end
;
for M,M in ipairs(Players:GetPlayers())do
    if M~=lp then
        update_chams(M);
    end
    ;
end
;
end
;
end,PD=function(M,P,L,t,B,A,c,s,O,E,D,V,w,h,o,z,R)local N;
repeat
    if not(t>0B101__)then
        N,R=M:DD(B,z,P,s,w,E,R,h);
        if N==0X2607 then
            break;
        elseif N~=-1 then
            else return R,-0X1,t;
            end
            ;
        elseif t>27 then
                if L==0x0 then
                    if E[18]==E[7]then
                        M:tD(E,z);
                    elseif not(E[0B1110])then
                            (V)[B]=E[0B1][c];
                        else local q,J;
                            for e=61,0X18D,0X68 do
                                if e<269 and e>61 then
                                    J=(#q);
                                    continue;
                                elseif e<165 then
                                        q=E[0X1][c];
                                    elseif e>0XA5 and e<373 then
                                            q[J+1]=(w);
                                            q[J+2]=B;
                                            continue;
                                        elseif not(e>0X10d)then
                                            else q[J+0X3]=(0X9);
                                                break;
                                            end
                                            ;
                                        end
                                        ;
                                    end
                                    ;
                                elseif L==0X7 then
                                        D[B]=(c);
                                    elseif L==1 then
                                            D[B]=B+c;
                                        elseif L==0X4 then
                                                (D)[B]=B-c;
                                            elseif L~=0b10 then
                                                else local L;
                                                    for q=92,0B10010100,0B11100 do
                                                        if q==120 then
                                                            (E[0X1C])[L+0X1]=V;(E[0B1_1100])[L+0X2]=B;
                                                        elseif q==0x5c then
                                                                L=(#E[28]);
                                                                continue;
                                                            elseif q~=0x94 then
                                                                else M:RD(E,L,c);
                                                                end
                                                                ;
                                                            end
                                                            ;
                                                        end
                                                        ;
                                                        t=0B00101;
                                                    else t=(0X3e);(D)[B]=(c);(P)[B]=z;
                                                        continue;
                                                    end
                                                    ;
                                                until false;
                                                if A==0B0 then
                                                    c=nil;
                                                    for L=0X7__,0B1111001,0X72 do
                                                        if not(L<0B111__1001)then
                                                            if E[39]==E[0X1F]then
                                                                return R,-2,t,c;
                                                            else if not(E[14])then
                                                                    (o)[B]=E[1][R];
                                                                else h,s,N=nil;
                                                                    h,s,N=M:cD(R,N,h,s,E);
                                                                    N=M:ND(h,s,N,w,B);
                                                                end
                                                                ;
                                                            end
                                                            ;
                                                        else c=M:MD(c);
                                                            continue;
                                                        end
                                                        ;
                                                    end
                                                    ;
                                                elseif A==0X7 then
                                                        O[B]=R;
                                                    elseif A==0B1 then
                                                            O[B]=B+R;
                                                        elseif A==0b100_ then
                                                                (O)[B]=B-R;
                                                            else if A~=2 then
                                                                else D=#E[28];
                                                                    P=(0X005);
                                                                    repeat
                                                                        if P>5 then
                                                                            E[0X1c][D+2]=B;
                                                                            break;
                                                                        else if P<0X20 then
                                                                                P=0B100000_;
                                                                                E[0X1C][D+0B1]=o;
                                                                            end
                                                                            ;
                                                                        end
                                                                        ;
                                                                    until false;(E[28])[D+0b11_]=R;
                                                                end
                                                                ;
                                                            end
                                                            ;
                                                            return R,nil,t;
                                                        end,Ad=function()return function(M)if M==lp then
                                                            return;
                                                        end
                                                        ;
                                                        task.delay(0.15,function()if _G.esp_chams_enabled or _G.esp_highlight_enabled then
                                                            update_chams(M);
                                                        end
                                                        ;
                                                    end);
                                                end
                                                ;
                                            end,yd=function()return function(M)if not _G.esp_chams_original_parts[M]then
                                                _G.esp_chams_original_parts[M]={Material=M.Material,Color=M.Color};
                                            end
                                            ;
                                        end
                                        ;
                                    end,d=function()return function(M)return M.Character and M.Character:FindFirstChild("\z  \66od\121Effe\zc\116\s")and M.Character.BodyEffects:FindFirstChild("K.O")and M.Character.BodyEffects["\K.\79"].Value;
                                end
                                ;
                            end,yD=function(M,M)local P=M[0X24]();
                            M[22]=(M[0x16]+P);
                            return{M[0B1111](M[0b101_11],M[0X16]-P,M[0x16]-0B1)};
                        end,vY=bit32.bxor,k=function()return function(M)if M.UserInputType==Enum.UserInputType.MouseButton1 or M.UserInputType==Enum.UserInputType.Touch then
                            holding_fire=false;
                        end
                        ;
                    end
                    ;
                end,wd=function()return function(M)if _G.cframespeed and _G.cframespeedactive then
                    local P=game.Players.LocalPlayer.Character;
                    if P then
                        local L=P:FindFirstChild('H\u{075}man\x6F\x69d');
                        local t=P:FindFirstChild("Hu\z  man\oid\zRo\o\116\z  \u{50}art");
                        if L and t and L.MoveDirection.Magnitude>0 then
                            t.CFrame=t.CFrame+L.MoveDirection.Unit*_G.v3_CFRAMESPEED*M;
                        end
                        ;
                    end
                    ;
                end
                ;
            end
            ;
        end,jD=function(M,M,P,L,t)L[0x001][t]={M,P};
    end,xY=bit32.band,Do=function()return function()plr=game:GetService("\z P\108\97\121e\u{0072}\x73").LocalPlayer;
    if _G.antifling and plr.Character and plr.Character.PrimaryPart then
        local M=plr.Character.PrimaryPart;
        if M.Velocity.Magnitude>1000 then
            M.Velocity=Vector3.new(0,0,0);
            M.RotVelocity=Vector3.new(0,0,0);
        end
        ;
        if not _G.antiflingLastCFrame then
            _G.antiflingLastCFrame=M.CFrame;
        elseif M.AssemblyLinearVelocity.Magnitude>1000 or M.AssemblyAngularVelocity.Magnitude>1000 then
                M.CFrame=_G.antiflingLastCFrame;
            else _G.antiflingLastCFrame=M.CFrame;
            end
            ;
        else _G.antiflingLastCFrame=nil;
        end
        ;
    end
    ;
end,mo=function()return function()if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('\72\z \x75\z \109a\u{6E}\111i\z  \u{0064}\82\z\u{006F}\111tPa\zrt')then
    fp_sleeping=not fp_sleeping;
    sethiddenproperty(LocalPlayer.Character.HumanoidRootPart,"Ne\u{74}work\x49\115S\x6C\z \ee\pin\g",fp_sleeping);
end
;
end
;
end,HY=function(M,M,P)M=P[2231];
return M;
end,XF=function()return function()local M=_G.v3_esp_settings;
local P=10;
local L=M.box_thickness;
local t=L*2;
local B={};
B.outer=Instance.new('\x46r\z ame',_G.v3_esp_gui);
B.outer.ZIndex=P;
P+=1;
B.outer.BackgroundTransparency=1;
B.outer_os=Instance.new("\85\73\St\114\z \u{6F}k\z \u{065}",B.outer);
B.outer_os.Thickness=t;
B.outer_os.Color=M.outline_color;
B.outer_os.Transparency=0.3;
B.main=Instance.new('\x46\z  r\97m\e',_G.v3_esp_gui);
B.main.ZIndex=P;
P+=1;
B.main.BackgroundTransparency=1;
B.fill=Instance.new('U\IGra\x64ien\u{074}',B.main);
B.fill.Rotation=45;
B.inner=Instance.new('\70ram\u{065}',_G.v3_esp_gui);
B.inner.ZIndex=P;
P+=1;
B.inner.BackgroundTransparency=1;
B.inner_ist=Instance.new("UISt\114o\107e",B.inner);
B.inner_ist.Thickness=L;
B.inner_ist.Color=Color3.new();
B.health_bg=Instance.new('Frame',_G.v3_esp_gui);
B.health_bg.ZIndex=P;
P+=1;
B.health_grad=Instance.new("\u{055}\x49G\zr\97dien\zt",B.health_bg);
B.health_grad.Rotation=90;
B.health_mask=Instance.new("\z F\z  r\x61\u{006D}e",B.health_bg);
B.health_mask.ZIndex=2;
B.health_mask.BackgroundColor3=Color3.new();
B.health_hs=Instance.new('UISt\u{72}o\zk\e',B.health_bg);
B.health_hs.Thickness=1;
B.health_hs.Color=Color3.new();
B.armor_bg=Instance.new('Fram\e',_G.v3_esp_gui);
B.armor_bg.ZIndex=P;
P+=1;
B.armor_grad=Instance.new('U\x49\71\114\z\97d\u{0069}\101\zn\u{074}',B.armor_bg);
B.armor_grad.Rotation=90;
B.armor_mask=Instance.new('\u{0046}ram\ze',B.armor_bg);
B.armor_mask.ZIndex=2;
B.armor_mask.BackgroundColor3=Color3.new();
B.armor_as=Instance.new("\zU\I\S\z  t\z  r\o\z\ke",B.armor_bg);
B.armor_as.Thickness=1;
B.armor_as.Color=Color3.new();
local M=function()local L=Instance.new("\84\x65xtLabel",_G.v3_esp_gui);
L.ZIndex=P;
P+=1;
L.BackgroundTransparency=1;
L.Name=random_string(1);
L.FontFace=_G.v3_esp_font;
L.TextStrokeTransparency=0;
L.TextStrokeColor3=Color3.new();
L.TextColor3=Color3.fromRGB(255,255,255);
return L;
end
;
B.name_label=M();
B.health_text=M();
B.health_text.TextXAlignment=Enum.TextXAlignment.Right;
B.armor_text=M();
B.armor_text.TextXAlignment=Enum.TextXAlignment.Left;
B.distance_label=M();
B.distance_label.TextXAlignment=Enum.TextXAlignment.Center;
B.tool_label=M();
B.tool_label.TextXAlignment=Enum.TextXAlignment.Center;
B.visual_health=1;
B.visual_armor=1;
B.last_tool=nil;
return B;
end
;
end,aD=function(M,P,L,t)(P)[0X23]=function()return M:CD(P);
end
;(P)[0X24]=(function()local B,A,c,s=0X0__,0X1,80;
repeat
    if c<111 then
        c=(111);
        repeat
            for O=0X02f,0B100_010__01,0X5a_ do
                if O==0X89 then
                else
                end
                ;
            end
            ;
            local O=P[0X13](P[0X17],P[0B1__0110],P[22]);
            for E=0B0,0X012c_,100 do
                if E==100 then
                    B=M:TD(B,A,O);
                elseif E==0B110__01_000 then
                        A=M:qD(A);
                    elseif E==300 then
                            P[22]=(P[0X16]+0X1);
                        else if E==0X0 then
                                if P[0X1e]==P[0B11011]then
                                    local A=0X2B;
                                    while true do
                                        if A==0X2b then
                                            s,A=M:bD(P,A);
                                            if s==-0b1 then
                                                return;
                                            end
                                            ;
                                        else if A~=0XE then
                                            else if P[0X23]then
                                                    B=M:gD(P,B);
                                                end
                                                ;
                                                break;
                                            end
                                            ;
                                        end
                                        ;
                                    end
                                    ;
                                end
                                ;
                            end
                            ;
                        end
                        ;
                    end
                    ;
                until O<0B100_0000__0;
                continue;
            else if c>0X50 then
                    return B;
                end
                ;
            end
            ;
        until false;
    end);
    if not(not t[25563])then
        L=(t[25563]);
    else L=-2617053742+((M.iZ(t[28590]-t[5826]<=M.CY[0B1001]and M.CY[0X8]or t[0x5__0c__b]))+t[0X7335]);
        t[0X63db]=(L);
    end
    ;
    return L;
end,Zo=function(M)local P=M[3];
local L=M[0];
local t=M[1];
local B=M[4];
local A=M[2];
return function()if not _G.ragebot_connection or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild('Huma\110o\z  \u{069}\u{0064}\x52\111\ot\x50\97r\x74')then
    charging=false;
    is_hiding=false;
    reset_physics();
    L('');
    return;
end
;
if game:GetService("P\x6C\97y\101\114\s").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("\Hum\97n\z \o\x69\u{064}R\z oo\x74\u{050}\z \u{0061}rt")then
    game:GetService('P\z  \u{06C}ay\z \101\u{0072}\u{73}').LocalPlayer.Character.HumanoidRootPart.Velocity=Vector3.zero;
end
;
if not valid(trg)then
    is_hiding=true;
    reset_physics();
    local M=P();
    _G.server_indicator_cframe=M;
    t:move_to(M);
    L('\115\116\u{61}\u{0074}\zu\x73\u{03A}\x28\104i\u{064}in\g \i\110\u{020}\118\111id\u{002E}\z  ..\41');
    return;
end
;
if A[3][A[2]](trg)then
    if B[3][B[2]](trg)then
        is_hiding=true;
        reset_physics();
        local M=P();
        _G.server_indicator_cframe=M;
        t:move_to(M);
        L("stat\117\u{073}\58(\hiding \z  i\110 \u{076}\u{06F}id...\)");
        return;
    end
    ;
    torso=trg.Character and(trg.Character:FindFirstChild("\85p\112erT\o\114s\o")or trg.Character:FindFirstChild("\x54\z  \x6Fr\s\x6F"));
    if torso then
        stomp_pos=torso.Position+Vector3.new(0,2.6,0);
        _G.server_indicator_cframe=CFrame.new(stomp_pos);
        t:move_to(stomp_pos);
        RunService.Heartbeat:Wait();
        pcall(function()ReplicatedStorage.MainEvent:FireServer("St\111\x6Dp");
    end);
    L("\s\z \116\z a\z  \116u\u{073}\:\u{0028}\x73\116\ompi\110\z\103:\z ("..trg.Name.."\z  \41)");
    task.wait(0.15);
end
;
return;
end
;
if is_hiding then
    is_hiding=false;
end
;
sethiddenproperty(LocalPlayer.Character.HumanoidRootPart,'P\104\ys\105c\u{0073}RepR\u{006F}\z  \o\x74\x50\97\x72t',trg_root);
t:move_to(root_to_tp);
_G.server_indicator_cframe=root_to_tp;
L('s\z  ta\z  tus\58\40k\x69\108\u{6C}in\g\x3A('..trg.Name..")\u{29}\58\x68\u{0065}al\116h:"..math.floor((trg.Character and trg.Character:FindFirstChild("H\117man\x6F\i\z d")and trg.Character.Humanoid.Health)or 0));
end
;
end,D=function(M)local P=M[0];
local L=M[1];
return function()if not P[3][P[2]]then
    return;
end
;
local M=lp.Character;
if not M or not M:FindFirstChild('\u{48}\117m\97n\111i\d\z \82\111o\z \x74Pa\z  \114t')then
    return;
end
;
local P=nil;
local t=_G.killauradistance;
for B,B in next,game.Players:GetPlayers()do
    if B==lp then
        continue;
    end
    ;
    local A=B.Character;
    if not A then
        continue;
    end
    ;
    local c=A:FindFirstChild("\x48u\x6Da\zno\z id");
    local s=A:FindFirstChild('H\z  uman\zoi\d\x52\111o\116P\97rt');
    if not c or c.Health<=0 or not s then
        continue;
    end
    ;
    if L(B)or A:FindFirstChildOfClass('\z  \x46\111rc\z  eF\u{069}e\z ld')then
        continue;
    end
    ;
    if istrgonwhitelistlist(B)then
        continue;
    end
    ;
    local L=(M.HumanoidRootPart.Position-s.Position).Magnitude;
    if L<t then
        P=B;
        t=L;
    end
    ;
end
;
if P then
    local L=M:FindFirstChildOfClass("\x54\o\z  \111l");
    if L and L.Parent==M and L:FindFirstChild('H\x61n\100\le')then
        local M=P.Character:FindFirstChild('\z  Head');
        local t=P.Character:FindFirstChild("Hu\109a\zn\x6F\u{069}d\RootPa\z\114t");
        if M and t then
            game.ReplicatedStorage:WaitForChild('Ma\u{69}n\x45\118ent'):FireServer('S\x68\111o\116\z  G\u{075}n',L.Handle,L.Handle.Position,t.Position,M,(M.Position-L.Handle.Position).Unit);
        end
        ;
    end
    ;
end
;
end
;
end,pY=function(M,M,P)(M)[0X7]=nil;(M)[0x8]=(nil);(M)[0b100__1]=(nil);
P=0X5A;
return P;
end,nF=function()return function()if not player.Character then
    return;
end
;
local M=player.Character:FindFirstChild("\85\z pp\z er\84\111r\115\111")or player.Character:FindFirstChild('To\u{072}\u{0073}o');
if not M then
    return;
end
;
local P=game:GetObjects('\u{72}bx\97s\x73etid\x3A\/\/'.._G.v3_assets.flow)[1];
if not P then
    return;
end
;
strip_scripts(P);
for L,L in ipairs(P:GetChildren())do
    strip_scripts(L);
    L.Parent=M;
    apply_neon(L);
    table.insert(aura_parts,L);
end
;
P:Destroy();
_G.flow_aura_active=M;
end
;
end,kF=function()return function(M)if _G.self_chams_original_decals[M]then
    M.Transparency=_G.self_chams_original_decals[M];
end
;
end
;
end,XD=function(M,M,P)P=M[0X26]();
return P;
end,Po=function(M)local P=M[0];
return function()if not Grabbed then
    return;
end
;
local M=tostring(LocalPlayer.Character.BodyEffects.Grabbed.Value);
P("\x72bxa\z s\se\u{0074}\id://313\053\051\x3891\0537");
local P=Instance.new('\u{41}\110\zi\u{06D}a\116ion');
P.AnimationId='\u{072}b\z \u{0078}\97s\115\z etid\u{03A}\47/3096\x30\x34\u{0037}1\x30\z\u{37}';
local L=LocalPlayer.Character:FindFirstChildWhichIsA("H\u{75}\z ma\u{06E}o\z i\d");
if L then
    local t=L:LoadAnimation(P);
    t.Priority=Enum.AnimationPriority.Action;
    t:Play();
    t:AdjustSpeed(1);
    task.wait(0.2);
end
;
local P=Players[M].Character;
if P and P:FindFirstChild('Up\p\erTo\114\zs\z o')then
    local M=P.UpperTorso;
    M.BodyPosition.D=900;
    RunService:UnbindFromRenderStep('\z  \80o\z  s');
    RunService:UnbindFromRenderStep("\u{54}e\u{006C}\z  \e\u{006B}i\x6E\101s\105s");
    local P=M:FindFirstChild("\z Bo\100y\u{0047}yro");
    if P then
        P:Destroy();
    end
    ;
    M.BodyPosition.Position=LocalPlayer.Character.HumanoidRootPart.Position+LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*150+Vector3.new(0,5,0);
    task.wait(0.5);
    local P=M:FindFirstChild('\z  \66od\yPo\u{73}\105t\z \u{0069}\zo\110');
    if P then
        P:Destroy();
    end
    ;
    ReplicatedStorage.MainEvent:FireServer("\z Grabb\105\110g",false);
    moving=false;
    Grabbed=false;
end
;
end
;
end,ed=function(M)local P=M[0];
return function(M,L)if L or not _G.superheroflyenabled or not _G.superheroflyk then
    return;
end
;
local L=(M.UserInputType==Enum.UserInputType.Keyboard and M.KeyCode)or M.UserInputType;
if L==_G.superheroflyk then
    if CCRSuperHeroFly.Humanoid and CCRSuperHeroFly.Root then
        P();
    end
    ;
end
;
if L==Enum.KeyCode.W then
    CCRSuperHeroFly.Keys.w=true;
end
;
if L==Enum.KeyCode.A then
    CCRSuperHeroFly.Keys.a=true;
end
;
if L==Enum.KeyCode.S then
    CCRSuperHeroFly.Keys.s=true;
end
;
if L==Enum.KeyCode.D then
    CCRSuperHeroFly.Keys.d=true;
end
;
end
;
end,Xo=function(M)local P=M[0];
return function()if P[3][P[2]]then
    P[3][P[2]]:Stop();
    P[3][P[2]]=nil;
end
;
end
;
end,ad=function()return function(M)local P=_G.esp_chams_boxes[M];
if P then
    for L in pairs(P.parts)do
        if L and L.Parent then
            restore_part(L);
        end
        ;
    end
    ;
    for L in pairs(P.decals)do
        if L and L.Parent then
            restore_decal(L);
        end
        ;
    end
    ;
    _G.esp_chams_boxes[M]=nil;
end
;
local P=M.Character;
if P then
    local M=_G.esp_highlight_instances[P];
    if M then
        M:Destroy();
    end
    ;
    _G.esp_highlight_instances[P]=nil;
end
;
end
;
end,ZD=function(M,M,P)P[0x8]=(M);
end,KZ=function(M,M,P)(P)[0X5]=(nil);
M=0B101_110;
return M;
end,hd=function()return function(M)M:WaitForChild("\u{0048}\z \u{75}m\x61\u{6E}\111id\u{052}oo\zt\x50art");
task.wait(1.5);
if _G.loadoutrespawn and selectedLoadoutGuns and#selectedLoadoutGuns>0 then
    AutoBuy2.BuyMultipleGuns(selectedLoadoutGuns);
else
end
;
end
;
end,QY=bit32.lrotate,DY=function(M,P,L,t,B)if t~=0X43 then
    L[20]=M.EY;
    for A=0,0B111__11111,0X1 do
        L[0B10001][A]=P(A);
    end
    ;
    if not B[26436]then
        t=0b11_01010+((M.GZ((M.GZ((M.OZ(M.CY[0b101]))))))<B[1052]and B[0x3BD__a]or M.CY[6]);(B)[26436]=t;
    else t=B[0X674__4__];
    end
    ;
else M:rY(L);
    return 0XBD47,t;
end
;
return nil,t;
end,Md=function(M)local P=M[0];
return function(M,L)if not L and M.KeyCode==_G.noclipk and _G.noclip then
    noclip_enabled=not noclip_enabled;
    if not noclip_enabled then
        P(true);
    end
    ;
end
;
end
;
end,lY=function(M,P,L,t)if t==0B101__10__10 then
    (P)[0X6_]=M.aY;
    if not(not L[0X6FAE])then
        t=L[0X6F_aE];
    else t=M:wY(L,t);
    end
    ;
    return 61178,t;
elseif t==113 then
        t=M:BY(L,P,t);
        return 0XEeFA,t;
    else if t==0B111_00 then
            (P)[0X8]=function(M,L,B,A)if not(B>M)then
            else return;
            end
            ;
            A=M-B+0X1;
            if A>=8 then
                return L[B],L[B+0X1],L[B+0B10],L[B+0b11],L[B+4],L[B+0b101],L[B+6],L[B+0B111],P[0B1000](M,L,B+0x8);
            else if A>=0B111 then
                    return L[B],L[B+1],L[B+2],L[B+0x3],L[B+0B100],L[B+0x5_],L[B+6],P[8](M,L,B+7);
                elseif A>=6 then
                        return L[B],L[B+0X1],L[B+0B10],L[B+0x3],L[B+4],L[B+5],P[8](M,L,B+6);
                    else if A>=0X05__ then
                            return L[B],L[B+0x1],L[B+0B010],L[B+3],L[B+0B100],P[0x8](M,L,B+0B101);
                        else if A>=4 then
                                return L[B],L[B+0X1],L[B+0X2],L[B+0x3__],P[8](M,L,B+4);
                            else if A>=0X3 then
                                    return L[B],L[B+0x1],L[B+2],P[0x008](M,L,B+3);
                                else if not(A>=0B10)then
                                        return L[B],P[0B1000](M,L,B+0X1);
                                    else return L[B],L[B+0B1],P[0X8](M,L,B+0x2_);
                                    end
                                    ;
                                end
                                ;
                            end
                            ;
                        end
                        ;
                    end
                    ;
                end
                ;
            end
            ;
            P[0B1001]=function(M,L,B)M=(M or 0X1);
            L=(L or#B);
            if(L-M+1)>0x1f3D then
                return P[0X8](L,B,M);
            else return P[0x3](B,M,L);
            end
            ;
        end
        ;
        return 0XB211,t;
    end
    ;
end
;
return nil,t;
end,Q=function()return function(M)if not(getgunhandle()and M.Character)then
    return;
end
;
local P=M.Character:FindFirstChild('\z  He\u{0061}\z  d');
local L=M.Character:FindFirstChild('\72\zumanoidRo\111tPa\u{072}t');
if not(P and L)then
    return;
end
;
fireatremotes={[2788229376]=function()Vars.ReplicatedStorage.MainEvent:FireServer('\z \x53\104o\x6F\z  \116Gu\x6E',getgunhandle(),getgunhandle().Position,L.Position,P,(P.Position-getgunhandle().Position).Unit);
end,[122409248932149]=function()Vars.ReplicatedStorage.MainEvent:FireServer("\x55\112\zd\97\x74\101M\111\111s\u{65}\z P\x6F\x7368\u{02E}\z  7\x35\x349\x33\u{035}4\0495\x36\z 987\56",P.Position);
end
};
firethatbotlolcccclol=fireatremotes[game.PlaceId];
if firethatbotlolcccclol then
    firethatbotlolcccclol();
end
;
end
;
end,bD=function(M,M,P)if M[0B11010]then
    return-1,P;
end
;
P=(14);
return nil,P;
end,Td=function()return function(M)local P=_G.esp_chams_original_decals[M];
if P~=nil then
    M.Transparency=P;
end
;
end
;
end,cY=function(M,P,L,t)(t)[0b10101]=(M._Y.bxor);(t)[0X0016]=0B1;
if not(not P[18899])then
    L=M:FY(L,P);
else L=M:MY(L,P);
end
;
return L;
end,jo=function(M)local P=M[0];
return function()task.wait(1);
if _G.DestroyerTool then
    P();
end
;
end
;
end,EY=string.unpack,bZ=function(M,P)local L,t=(52);
repeat
    t,L=M:qZ(P,L);
    if t==0X09e75 then
        continue;
    else if t~=-0b1 then
        else return-0X1__;
        end
        ;
    end
    ;
until false;
return nil;
end,Rd=function(M)local P=M[0];
return function()if not _G.bikeflyenabled then
    return;
end
;
if not _ccrbikefly.vehiclepart or not _ccrbikefly.vehiclepart.Parent then
    _ccrbikefly.vehiclepart=P();
    if not _ccrbikefly.vehiclepart then
        _G.bikeflyenabled=false;
        return;
    end
    ;
end
;
local M=_ccrbikefly.vehiclepart;
if not M:FindFirstChild("G\121r\u{6F}")then
    local P=Instance.new("\x42o\100\121\x47\z  yro",M);
    P.Name='G\zy\114o';
    P.MaxTorque=Vector3.new(9e9,9e9,9e9);
    P.P=10000;
    local P=Instance.new('Bod\121\x56el\u{06F}c\105\116y',M);
    P.Name="\u{0056}\z  el";
    P.MaxForce=Vector3.new(9e9,9e9,9e9);
end
;
M.Gyro.CFrame=Camera.CFrame;
local P=Vector3.zero;
if _ccrbikefly.control.w then
    P+=M.CFrame.LookVector;
end
;
if _ccrbikefly.control.s then
    P-=M.CFrame.LookVector;
end
;
if _ccrbikefly.control.d then
    P+=M.CFrame.RightVector;
end
;
if _ccrbikefly.control.a then
    P-=M.CFrame.RightVector;
end
;
M.Vel.Velocity=P.Magnitude>0 and P.Unit*_G.bikeflyspeed or Vector3.zero;
end
;
end,so=function()return function(M)char=M;
M:WaitForChild('H\117\x6D\x61\110\u{006F}id');
for M,M in ipairs(_G.multi_gun)do
    local P=LocalPlayer.Backpack:FindFirstChild(M);
    if P then
        P.Parent=char;
    end
    ;
end
;
end
;
end,No=function(M)local P=M[0];
return function()if not LocalPlayer.Character.BodyEffects.Grabbed.Value then
    RunService:UnbindFromRenderStep('\x50\z \u{6F}s');
    P("\114bx\97\x73\s\101tid:\x2F\x2F31\u{0033}53891\u{0035}7");
    Grabbed=false;
end
;
end
;
end,vd=function()return function()if not CCRSuperHeroFly.Enabled or not CCRSuperHeroFly.Core then
    return;
end
;
local M=Vector3.zero;
if CCRSuperHeroFly.Keys.w then
    M+=cam.CFrame.LookVector;
end
;
if CCRSuperHeroFly.Keys.s then
    M-=cam.CFrame.LookVector;
end
;
if CCRSuperHeroFly.Keys.a then
    M-=cam.CFrame.RightVector;
end
;
if CCRSuperHeroFly.Keys.d then
    M+=cam.CFrame.RightVector;
end
;
if M.Magnitude>0 then
    CCRSuperHeroFly.BodyPosition.Position=CCRSuperHeroFly.Core.Position+M.Unit*CCRSuperHeroFly.Speed;
    if CCRSuperHeroFly.FlyTrack and not CCRSuperHeroFly.FlyTrack.IsPlaying then
        CCRSuperHeroFly.FlyTrack:Play();
    end
    ;
else CCRSuperHeroFly.BodyPosition.Position=CCRSuperHeroFly.Core.Position;
    if CCRSuperHeroFly.FlyTrack then
        CCRSuperHeroFly.FlyTrack:Stop();
    end
    ;
    if CCRSuperHeroFly.IdleTrack and not CCRSuperHeroFly.IdleTrack.IsPlaying then
        CCRSuperHeroFly.IdleTrack:Play();
    end
    ;
end
;
CCRSuperHeroFly.BodyGyro.CFrame=cam.CFrame;
end
;
end,q=function()return function(M)return not M.Character or(M.Character:FindFirstChild('\x42odyE\x66\102\u{065}\99\x74s')and M.Character.BodyEffects:FindFirstChild('\x4B\z \46\79')and M.Character.BodyEffects['\x4B.O'].Value)or M.Character:FindFirstChild("\u{47}\82ABB\ING_CO\NST\x52AI\x4ET");
end
;
end,OD=function(M,P,L)if L[0B1111]==L[0X2]then
    while-(-59)do
        return{M:YD()},P;
    end
    ;
end
;
P=(0b101__0);
return 0XaC47_,P;
end,hF=function()return function()_G.self_chams_original_parts={};
_G.self_chams_original_decals={};
_G.self_chams_update();
end
;
end,v=function(M)local P=M[0];
local L=M[1];
return function(M,t)if t or not _G.aimbot_keybind then
    return;
end
;
is_key_matching=M.KeyCode==_G.aimbot_keybind or M.UserInputType==_G.aimbot_keybind;
if not is_key_matching then
    return;
end
;
if L(M)then
    aimbot_enabled=true;
    if _G.aimbotMode=='\x63a\mlock'then
        locked_target_aimbot=P();
    elseif _G.aimbotMode=='\u{0073}ti\99\107\121a\105m'then
            current_sticky_aim_target=P();
        end
        ;
    else if _G.aimbotMode=="s\u{0074}\u{069}\x63k\u{0079}\za\105m"then
            aimbot_enabled=not aimbot_enabled;
            locked_target_aimbot=nil;
            current_sticky_aim_target=nil;
        elseif _G.aimbotMode=='\99\z a\z m\x6C\o\ck'then
                if locked_target_aimbot then
                    locked_target_aimbot=nil;
                    aimbot_enabled=false;
                else locked_target_aimbot=P();
                    aimbot_enabled=locked_target_aimbot~=nil;
                end
                ;
                current_sticky_aim_target=nil;
            end
            ;
        end
        ;
    end
    ;
end,R=function(M)local P=M[0];
return function()if not P[3][P[2]]or not P[3][P[2]].Parent or not char or not char.Parent then
    return;
end
;
local M=char:FindFirstChild("H\x75\109\97noi\100\z \x52\111o\116Par\u{74}");
local L=P[3][P[2]]:FindFirstChild("\Huma\u{06E}\oi\dR\z oot\x50a\u{0072}\zt");
if not M or not L then
    return;
end
;
L.CFrame=CFrame.new((M.CFrame*CFrame.new(0,0,5)).Position,(M.CFrame*CFrame.new(0,0,5)).Position+M.CFrame.LookVector);
end
;
end,cF=function()return function(M)if not _G.self_chams_original_parts[M]then
    _G.self_chams_original_parts[M]={Material=M.Material,Color=M.Color};
end
;
end
;
end,nd=function()return function(M)clear_player(M);
end
;
end,uY=function(M)local P=M[0];
return function()task.wait(1);
if _G.SlamTool then
    P();
end
;
end
;
end,iF=function()return function()if _G.auras_highlight_enabled then
    _G.auras_apply_highlight();
end
;
end
;
end,pd=function()return function(M,P)if not P and M.KeyCode==_G.cframespeedk and _G.cframespeed then
    _G.cframespeedactive=not _G.cframespeedactive;
end
;
end
;
end,Eo=function(M)local P=M[2];
local L=M[1];
local t=M[0];
return function()task.wait(2);
if _G.automask then
    _G.mask_activated=false;
    P();
    t();
    L();
end
;
end
;
end,_Z=function(M,P)(P[7])[0X8]=M.QY;(P[0X7])[0B1010]=M.GZ;
end,CD=function(M,P)local L,t;
local B,A=P[0B10100]("\z<\zd",P[0B10111__],P[0X16]);
if P[0X1B]==P[15]then
    L,t=M:oD(P);
    if L~=-2 then
    else return t;
    end
    ;
end
;(P)[0B10110]=(A);
return B;
end,UF=function()return function(M,P)if P then
    return;
end
;
if _G.add_trg_to_list and M.KeyCode==_G.add_trg_to_list_key then
    closest=nil;
    dist=math.huge;
    mouse_pos=game:GetService('Us\e\zr\u{0049}\u{06E}p\z\117t\83er\u{76}i\z  c\101'):GetMouseLocation();
    for M,M in ipairs(game.Players:GetPlayers())do
        if M~=game.Players.LocalPlayer and M.Character and M.Character:FindFirstChild('\u{048}ea\zd')then
            hp=M.Character.Head;
            sp,vis=workspace.CurrentCamera:WorldToViewportPoint(hp.Position);
            if vis and not wallblocked(workspace.CurrentCamera.CFrame.Position,hp)then
                mag=(Vector2.new(sp.X,sp.Y)-mouse_pos).Magnitude;
                if mag<dist then
                    dist=mag;
                    closest=M;
                end
                ;
            end
            ;
        end
        ;
    end
    ;
    if not closest then
        return;
    end
    ;
    n={};
    for M,P in pairs(Options.target_player_dropdown.Value or{})do
        n[M]=P;
    end
    ;
    if not n[closest.Name]then
        n[closest.Name]=true;
        Options.target_player_dropdown:SetValue(n);
        Library:Notify(closest.Name..' \x61d\zd\x65d to targe\116s',3);
    end
    ;
    _G.target_player_v3={};
    for M,P in pairs(n)do
        if P and game.Players:FindFirstChild(M)then
            table.insert(_G.target_player_v3,game.Players:FindFirstChild(M));
        end
        ;
    end
    ;
end
;
end
;
end,Od=function()return function()if not CCRegFly.Flying or not CCRegFly.Core then
    return;
end
;
local M=Vector3.zero;
if CCRegFly.Keys.w then
    M+=cam.CFrame.LookVector;
end
;
if CCRegFly.Keys.s then
    M-=cam.CFrame.LookVector;
end
;
if CCRegFly.Keys.a then
    M-=cam.CFrame.RightVector;
end
;
if CCRegFly.Keys.d then
    M+=cam.CFrame.RightVector;
end
;
CCRegFly.BodyPosition.Position=CCRegFly.Core.Position+(M.Magnitude>0 and M.Unit*(_G.REGFLYSPEED or 40)or Vector3.zero);
CCRegFly.BodyGyro.CFrame=cam.CFrame;
end
;
end,Ho=function(M)local P=M[1];
local L=M[0];
return function()task.wait(1);
if _G[L]then
    P();
end
;
end
;
end,c=function(M)local P=M[0];
return function(M)if M:IsA('T\z\111\u{06F}\u{6C}')then
    P(M);
end
;
end
;
end,I=function()return function(M)while true do
end
;
end
;
end,Wo=function()return function(M)M.CharacterAdded:Connect(function(M)M:WaitForChild("\zH\x75\z \u{6D}\z \97\110o\105\100").DisplayDistanceType=Enum.HumanoidDisplayDistanceType.None;
M.Humanoid.NameDisplayDistance=0;
end);
end
;
end,F=function(M)local P=M[0];
return function(M,L,t)local B=getcallingscript();
if _G.anti_recoil and tostring(B)=="Fr\u{0061}m\101\x77o\114k"then
    if tostring(M):lower():find('\ca\u{06D}e\zra')and tostring(L)=='\u{043}\Fr\x61\x6D\u{065}'then
        return;
    end
    ;
end
;
return P(M,L,t);
end
;
end,cD=function(M,P,L,t,B,A)local c;
t=nil;
B=(nil);
L=(0x51);
while true do
    L,c,t,B=M:FD(t,P,B,L,A);
    if c~=25068 then
    else break;
    end
    ;
end
;
return t,B,L;
end,j=function()return function(M)multiequipenabled=M;
if multiequipenabled then
    for M,M in ipairs(_G.multi_gun)do
        local P=multi_equip_player.Backpack:FindFirstChild(M);
        if P then
            P.Parent=char;
        end
        ;
    end
    ;
else for M,M in ipairs(_G.multi_gun)do
        local P=char and char:FindFirstChild(M);
        if P then
            P.Parent=multi_equip_player.Backpack;
        end
        ;
    end
    ;
end
;
end
;
end,iZ=bit32.band,Id=function()return function()while _G.v3_esp_settings.enabled do
    task.wait(6.1);
    if not _G.v3_esp_settings.enabled then
        break;
    end
    ;
    trigger_update();
    update_all_visuals();
    update_visuals_needed=true;
end
;
end
;
end,QF=function()return function()update_color();
end
;
end,fd=function(M)local P=M[0];
return function(M)M.CharacterAdded:Connect(function()P(M);
end);
end
;
end,Ed=function(M)local P=M[0];
return function()on_char_added(P);
end
;
end,zd=function(M)local P=M[0];
return function(M,L)if not checkcaller()and not _G.__Bypass then
    if L=="\u{0057}\u{061}lk\zSpe\z\ed"then
        return _G.CurrentWS;
    elseif L=="J\x75\109\112Powe\114"then
            return _G.CurrentJP;
        end
        ;
    end
    ;
    return P(M,L);
end
;
end,p=function(M)local P=M[1];
local L=M[5];
local t=M[7];
local B=M[4];
local A=M[2];
local c=M[8];
local s=M[6];
local O=M[10];
local E=M[0];
local D=M[9];
local V=M[11];
local w=M[3];
return function(M)if not CCRRageBot.ragebote or not CCRRageBotTable.locked then
    CCRRageBotTable.cam.CameraSubject=CCRRageBotTable.lp.Character;
    CCRRageBotTable.target=nil;
    CCRRageBotTable.rootpart=nil;
    CCRRageBotTable.lastragebotcf=nil;
    c[3][c[2]]=nil;
    if P[3][P[2]]and P[3][P[2]].Parent then
        P[3][P[2]]:Destroy();
        P[3][P[2]]=nil;
    end
    ;
    return;
end
;
if not CCRRageBotTable.target or not CCRRageBotTable.target.Character or not CCRRageBotTable.lp.Character then
    CCRRageBotTable.locked=false;
    CCRRageBotTable.target=nil;
    E.Visible=false;
    if CCRRageBotTable.tracer then
        CCRRageBotTable.tracer.Visible=false;
    end
    ;
    for h,h in ipairs(B[3][B[2]])do
        h.Visible=false;
    end
    ;
    CCRRageBotTable.cam.CameraSubject=CCRRageBotTable.lp.Character;
    c[3][c[2]]=nil;
    if P[3][P[2]]and P[3][P[2]].Parent then
        P[3][P[2]]:Destroy();
        P[3][P[2]]=nil;
    end
    ;
    return;
end
;
CCRRageBotTable.rootpart=CCRRageBotTable.lp.Character:FindFirstChild("Hu\109a\z noid\u{0052}\111otPa\z  rt");
local h=CCRRageBotTable.target.Character:FindFirstChild('\72umano\105\100\82o\z  ot\u{050}a\z\114\116');
if not CCRRageBotTable.rootpart or not h then
    CCRRageBotTable.locked=false;
    CCRRageBotTable.target=nil;
    E.Visible=false;
    if CCRRageBotTable.tracer then
        CCRRageBotTable.tracer.Visible=false;
    end
    ;
    for o,o in ipairs(B[3][B[2]])do
        o.Visible=false;
    end
    ;
    CCRRageBotTable.cam.CameraSubject=CCRRageBotTable.lp.Character;
    c[3][c[2]]=nil;
    return;
end
;
local o=t(CCRRageBotTable.target)or CCRRageBotTable.target.Character:FindFirstChildOfClass('\u{0046}\z  orce\z  F\u{0069}\x65\z\x6C\z  d');
if o then
    CCRRageBotTable.locked=false;
    CCRRageBotTable.target=nil;
    E.Visible=false;
    if CCRRageBotTable.tracer then
        CCRRageBotTable.tracer.Visible=false;
    end
    ;
    for t,t in ipairs(B[3][B[2]])do
        t.Visible=false;
    end
    ;
    CCRRageBotTable.cam.CameraSubject=CCRRageBotTable.lp.Character;
    c[3][c[2]]=nil;
    return;
end
;
s();
if CCRRageBot.autoshoot then
    Mouse1click();
end
;
if game.PlaceId==9825515356 then
    w[3][w[2]]=w[3][w[2]]+M;
    if w[3][w[2]]>=0.5 then
        w[3][w[2]]=0;
        L[3][L[2]]=(L[3][L[2]]%#A)+1;
        local M=A[L[3][L[2]]];
        local L=h.CFrame;
        local t=L.Position+L:VectorToWorldSpace(M);
        CCRRageBotTable.lastragebotcf=CCRRageBotTable.rootpart.CFrame;
        CCRRageBotTable.rootpart.CFrame=CFrame.new(t,L.Position);
    end
    ;
else CCRRageBotTable.lastragebotcf=CCRRageBotTable.rootpart.CFrame;
    ccrradiusragebot=_G.RagebotRadius or 10;
    ccrspeedragebot=_G.RagebotSpeed or 30;
    timeragelol=tick()*ccrspeedragebot;
    ragebot_1rage=math.cos(timeragelol)*ccrradiusragebot;
    ragebot_3rage=math.sin(timeragelol)*ccrradiusragebot;
    orbitPosrage=h.Position+Vector3.new(ragebot_1rage,6,ragebot_3rage);
    CCRRageBotTable.rootpart.CFrame=CFrame.new(orbitPosrage,h.Position+Vector3.new(0,_G.RageBotHeight,0));
end
;
CCRRageBotTable.cam.CameraSubject=CCRRageBot.visuals.view and CCRRageBotTable.target.Character or CCRRageBotTable.lp.Character;
O();
CCRRageBotTable.RunService.Heartbeat:Wait();
if CCRRageBotTable.lastragebotcf then
    CCRRageBotTable.rootpart.CFrame=CCRRageBotTable.lastragebotcf;
end
;
local M,L=CCRRageBotTable.cam:WorldToViewportPoint(CCRRageBotTable.rootpart.Position);
E.Position,E.Visible=Vector2.new(M.X,M.Y),false;
if CCRRageBot.visuals.tracer then
    if not CCRRageBotTable.tracer then
        CCRRageBotTable.tracer=Drawing.new('\z  \76ine');
        CCRRageBotTable.tracer.Color=_G.RagebotColor;
        CCRRageBotTable.tracer.Thickness=1;
    end
    ;
    CCRRageBotTable.tracer.Visible=L;
    CCRRageBotTable.tracer.From=Vector2.new(M.X,M.Y);
    CCRRageBotTable.tracer.To=Vector2.new(M.X,M.Y);
elseif CCRRageBotTable.tracer then
        CCRRageBotTable.tracer.Visible=false;
    end
    ;
    if Visualize then
        if not P[3][P[2]]or not P[3][P[2]].Parent then
            V();
        end
        ;
        for M,M in pairs(P[3][P[2]]:GetDescendants())do
            if M:IsA('Base\80ar\116')then
                M.BrickColor=BrickColor.new(_G.RagebotColor or Color3.fromRGB(255,0,0));
                M.Material=Enum.Material.Neon;
            end
            ;
        end
        ;
        local M=P[3][P[2]]:FindFirstChild("\u{048}\z \117\109a\x6Eoi\z d\zR\111o\u{074}\P\z ar\x74");
        if M and h then
            _G.v3radiusragebot=_G.RagebotRadius or 10;
            _G.v3speedragebot=_G.RagebotSpeed or 30;
            _G.timeragelol=tick()*_G.v3speedragebot;
            _G.ragebot_1rage=math.cos(_G.timeragelol)*_G.v3radiusragebot;
            _G.ragebot_3rage=math.sin(_G.timeragelol)*_G.v3radiusragebot;
            _G.orbitPosrage=h.Position+Vector3.new(_G.ragebot_1rage,6,_G.ragebot_3rage);
            M.CFrame=CFrame.new(_G.orbitPosrage,h.Position+Vector3.new(0,_G.RageBotHeight,0));
            _G.server_indicator_cframe=CFrame.new(_G.orbitPosrage,h.Position+Vector3.new(0,_G.RageBotHeight,0));
            syncanimations();
        end
        ;
    else if P[3][P[2]]and P[3][P[2]].Parent then
            P[3][P[2]]:Destroy();
            P[3][P[2]]=nil;
        end
        ;
    end
    ;
    if CCRRageBot.visuals.circle and CCRRageBotTable.target and CCRRageBotTable.target.Character then
        D(CCRRageBotTable.target.Character);
    else for M,M in ipairs(B[3][B[2]])do
            M.Visible=false;
        end
        ;
    end
    ;
end
;
end,Jo=function(M)local P=M[0];
return function()if P[3][P[2]]then
    P[3][P[2]]:Stop();
    P[3][P[2]]=nil;
end
;
RunService:UnbindFromRenderStep('Te\z\108\101\x6B\105\u{06E}\u{065}\s\x69s');
moving=false;
end
;
end,O=function(M)local P=M[0];
return function(M,L)if M==Mouse and L=='Hi\116'and v3_settings_silent_aim['\Silen\x74\z \65im']['En\z  \97\x62led']then
    local t=silentaim.locked_target;
    if t and t.Character then
        local B=t.Character:FindFirstChild("\x48u\z  \m\x61n\oidR\111ot\P\u{061}\114t");
        if not B then
            return P(M,L);
        end
        ;
        local A;
        local c=Vector2.new(UserInputService:GetMouseLocation().X,UserInputService:GetMouseLocation().Y);
        if v3_settings_silent_aim['Sile\110\116Ai\u{06D}']['\u{0043}loe\u{0073}t\u{0050}ar\x74']then
            local s,O=nil,math.huge;
            for E,E in ipairs(t.Character:GetChildren())do
                if E:IsA('\u{042}\x61\z sePar\116')then
                    if v3_settings_silent_aim["\83\x69\lent\u{0041}\105\x6D"]["\z  \u{0057}\97\ll\67h\x65ck"]and wallblocked(Camera,E)then
                        continue;
                    end
                    ;
                    local D,V=Camera:WorldToViewportPoint(E.Position);
                    if V then
                        local V=(Vector2.new(D.X,D.Y)-c).Magnitude;
                        if V<O then
                            s,O=E,V;
                        end
                        ;
                    end
                    ;
                end
                ;
            end
            ;
            A=s;
        else A=t.Character:FindFirstChild(v3_settings_silent_aim['\z  \x53i\le\u{006E}\x74A\u{0069}\u{6D}']['AimPa\z r\116']);
            if A and v3_settings_silent_aim['\u{0053}ile\u{006E}tA\z\i\109']["\u{0057}a\108\z lC\z  \u{0068}e\z \c\x6B"]and wallblocked(Camera,A)then
                A=nil;
            end
            ;
        end
        ;
        if A and math.random(0,100)<=v3_settings_silent_aim["\z  \u{53}i\u{6C}e\110\x74Aim"]['Hit\zChan\u{063}\z  \e']then
            if v3_settings_silent_aim["S\105l\101\u{006E}t\z  A\105\z m"]['S\101tPredicti\111n']then
                return CFrame.new(A.Position+B.Velocity*v3_settings_silent_aim['S\u{0069}le\z  n\z tAim']["S\101t\z  Pr\u{0065}dict\z i\111n\V\z\97\u{6C}u\101"]);
            elseif v3_settings_silent_aim['\83\x69\108\101n\x74\u{041}im']['A\z\117to\z  \80\u{072}\101\u{64}\z  \u{69}c\116\x69\111n']then
                    local t=math.floor(game.Players.LocalPlayer:GetNetworkPing()*1000);
                    local c=0.00225*t;
                    return CFrame.new(A.Position+B.Velocity*c);
                else return CFrame.new(A.Position);
                end
                ;
            end
            ;
        end
        ;
    end
    ;
    return P(M,L);
end
;
end,A=function()return function(M)return M.Character and M.Character:FindFirstChild("GR\u{0041}\zB\z \66I\78\71\95CON\83\84\z \x52AI\u{04E}\84");
end
;
end,gd=function()return function(M)local P=M.Character;
if not P or M==lp then
    return;
end
;
local L=_G.esp_chams_boxes[M];
if not L then
    L={parts={},decals={}};
    _G.esp_chams_boxes[M]=L;
end
;
for M,M in ipairs(P:GetDescendants())do
    if M:IsA('B\u{061}se\u{0050}a\z\114t')then
        if not L.parts[M]then
            L.parts[M]=true;
            backup_part(M);
        end
        ;
        if _G.esp_chams_material_enabled then
            local t=_G.esp_chams_material;
            if typeof(t)~='En\x75mItem'then
                t=material_map[tostring(t)]or Enum.Material.ForceField;
            end
            ;
            M.Material=t;
            M.Color=_G.esp_chams_color;
        else restore_part(M);
        end
        ;
    elseif M:IsA('\Dec\u{0061}\108')then
            if not L.decals[M]then
                L.decals[M]=true;
                backup_decal(M);
            end
            ;
            if _G.esp_chams_disable_decals then
                M.Transparency=1;
            else local L=_G.esp_chams_original_decals[M];
                if L~=nil then
                    M.Transparency=L;
                end
                ;
            end
            ;
        end
        ;
    end
    ;
    if _G.esp_highlight_enabled then
        apply_highlight(P);
    else local M=_G.esp_highlight_instances[P];
        if M then
            M:Destroy();
            _G.esp_highlight_instances[P]=nil;
        end
        ;
    end
    ;
end
;
end,TZ=function(M,M,P)(P)[0X21]=(P[15]);
M=(0B1__1__);
return M;
end,y=function(M)local P=M[0];
return function()while true do
    getgenv().httpget=function(M)return game.HttpGet(game,M);
end
;
getgenv().httprequest=function(M)return http_request(M);
end
;
P();
task.wait(0.05);
end
;
end
;
end,oZ=function(M,P,L,t,B)if t<=0X9 then
    B=M:IZ(P,B,L);
    return L,B,0x681b,t;
else L,t=M:yZ(P,L,t);
end
;
return L,B,nil,t;
end,GZ=bit32.bor,ZY=function(M,P,L)(L)[15322]=-5414864668+((M.eZ(M.CY[8]+M.CY[0X7]))+M.CY[0X5]+M.CY[0x1__]);
P=(106+(M.QZ((M.vZ(M.CY[0x8]+M.CY[3],(20)))<=M.CY[0X07]and M.CY[0B1000]or M.CY[0B01001])));(L)[0XEa7]=P;
return P;
end,Qo=function()return function(M)if M.UserInputType==Enum.UserInputType.MouseButton1 then
    multithem=false;
end
;
end
;
end,oD=function(M,M)while M[0XF]do
    return-0x2,-0x3e^0B111100;
end
;
return nil;
end,NF=function()return function(M)if _G.self_chams_original_parts[M]then
    M.Material=_G.self_chams_original_parts[M].Material;
    M.Color=_G.self_chams_original_parts[M].Color;
end
;
end
;
end,eD=function(M,M,P,L)(M)[0B111]=P;
L=0X3B;
return L;
end,zF=function(M)local P=M[0];
local L=M[1];
return function(M,...)local t=getnamecallmethod();
local B={...};
if t=="\z F\ire\x53e\114v\z \101r"and B[1]=="\S\104o\111t\71un"and B[5]then
    hit_part=B[5];
    table.insert(_G.hit_queue,{part=hit_part,name=hit_part.Parent and hit_part.Parent.Name or'',startPos=B[3],endPos=B[4],time=tick(),verified=false});
    if _G.bullet_tracers_enabled then
        P(B[3],B[4]);
    end
    ;
end
;
return L(M,...);
end
;
end,b=function()return function(M)return M.Character and M.Character:FindFirstChild('B\111\100y\u{0045}\u{66}f\ec\x74\115')and M.Character.BodyEffects:FindFirstChild('\x4B.\79')and M.Character.BodyEffects['K.\x4F'].Value;
end
;
end,FF=function()return function()if not _G.weather_enabled then
    return;
end
;
if not LocalPlayer.Character:FindFirstChild('Humano\z\idRootPar\z  t')then
    return;
end
;
for M,M in pairs(_G.weather_particle_models)do
    if M.Part and M.Emitter then
        M.Part.Position=LocalPlayer.Character:FindFirstChild('\z \72u\z \x6D\z\97no\x69dRo\111\x74\Part').Position+Vector3.new(0,20,0);
        M.Emitter.Rate=_G.weather_rate;
        M.Emitter.Lifetime=NumberRange.new(_G.weather_lifetime*0.2,_G.weather_lifetime*0.3);
        M.Emitter.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,_G.weather_color_start),ColorSequenceKeypoint.new(0.5,_G.weather_color_middle),ColorSequenceKeypoint.new(1,_G.weather_color_end)});
        M.Emitter.TimeScale=_G.weather_time_scale;
        if _G.weather_type=="S\110\111w"then
            M.Emitter.Size=NumberSequence.new(0.11);
            M.Emitter.Squash=NumberSequence.new(0.11);
        end
        ;
    end
    ;
end
;
end
;
end,OZ=bit32.countlz,w=function(M)local P=M[0];
return function(M,L)if CCRRageBot.ragebote and CCRRageBotTable.locked and CCRRageBotTable.target and M==CCRRageBotTable.rootpart and L=='\u{043}\u{46}\zr\x61m\101'and CCRRageBotTable.lastragebotcf and not checkcaller()then
    if CCRRageBotTable.target.Character then
        local t=CCRRageBotTable.target.Character:FindFirstChild("\z \u{042}o\z\u{0064}y\69ffe\u{063}\z t\u{73}");
        local B=t and t:FindFirstChild('\u{004B}.\O')and t['\75\z.\x4F'].Value;
        if B then
            CCRRageBotTable.locked=false;
            CCRRageBotTable.target=nil;
            CCRRageBotTable.lastragebotcf=nil;
            return P(M,L);
        else return CCRRageBotTable.lastragebotcf;
        end
        ;
    end
    ;
end
;
return P(M,L);
end
;
end,vD=function(M,M,P,L,t,B,A)B=(nil);
A=nil;
L=(nil);
t=nil;
P=(0B1000__1__11);
while true do
    if P==0X4_7 then
        B=M[0B1001_01]();
        P=(0x7a);
        A=M[0x25]();
    elseif P==0X007a then
            P=(17);
            L=M[0x25]();
        else if P~=0X11 then
            else t=(A%0x08);
                break;
            end
            ;
        end
        ;
    end
    ;
    return P,A,B,L,t;
end,td=function()return function(M)if _ccrbikefly.control[M.KeyCode.Name]~=nil and _G.bikeflyenabled then
    _ccrbikefly.control[M.KeyCode.Name]=false;
end
;
end
;
end,qZ=function(M,P,L)if L<52 then
    M:CZ();
    return-0x1,L;
else if not(L>0X3)then
    else L=M:TZ(L,P);
        return 40565,L;
    end
    ;
end
;
return nil,L;
end,wF=function()return function(M)for P,P in pairs(M:GetDescendants())do
    if P:IsA("P\u{61}r\116\i\u{063}\l\101E\x6Dit\x74e\z\114")or P:IsA('\zB\101\z  am')then
        P.Lifetime=NumberRange.new(_G.hit_effect_lifetime);
        P.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,_G.hit_effect_color_start),ColorSequenceKeypoint.new(0.5,_G.hit_effect_color_middle),ColorSequenceKeypoint.new(1,_G.hit_effect_color_end)});
    end
    ;
end
;
end
;
end,e=function()return function()return LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA('\84oo\u{06C}')and LocalPlayer.Character:FindFirstChildWhichIsA('T\111\111\108'):FindFirstChild('Ha\u{06E}d\x6C\e');
end
;
end,qD=function(M,M)M*=128;
return M;
end,ho=function(M)local P=M[0];
return function()if not Grabbed then
    return;
end
;
local M=tostring(LocalPlayer.Character.BodyEffects.Grabbed.Value);
local L=LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass('\H\z\117m\u{61}\x6E\z \oi\u{064}');
if L then
    for t,t in pairs(L:GetPlayingAnimationTracks())do
        if t.Animation.AnimationId=="\114bxa\u{0073}se\116\x69\100\58\z \u{02F}\047313538915\55"or t.Animation.AnimationId=='rbxas\x73et\105d\58//15\054\048999\z 5\05379'then
            t:Stop();
        end
        ;
    end
    ;
end
;
if not P[3][P[2]]or(P[3][P[2]].AnimationId~="r\98x\u{061}ss\101t\zi\u{0064}://1\z  \u{035}6\0489\057\0575\0537\57")then
    if P[3][P[2]]then
        P[3][P[2]]:Stop();
    end
    ;
    local L=Instance.new("\65ni\109\97ti\u{006F}\110");
    L.AnimationId='\zrb\120ass\101\116id\:\x2F/\049\053\x3609\05795579';
    local t=LocalPlayer.Character:FindFirstChildWhichIsA('H\zu\109a\u{06E}\x6Fid');
    if t then
        P[3][P[2]]=t:LoadAnimation(L);
        P[3][P[2]].Priority=Enum.AnimationPriority.Action;
        P[3][P[2]]:Play();
        P[3][P[2]]:AdjustSpeed(1);
    end
    ;
end
;
RunService:UnbindFromRenderStep("P\o\s");
RunService:UnbindFromRenderStep("T\101\108e\x6Bi\110e\115i\s");
local P=Players:FindFirstChild(M);
if P and P.Character then
    P.Character:BreakJoints();
end
;
ReplicatedStorage.MainEvent:FireServer('Gra\z  bbi\x6Eg',false);
moving=false;
Grabbed=false;
end
;
end,sZ=function(M,M,P)M=(P[0X392]);
return M;
end,oo=function(M)local P=M[1];
local L=M[0];
return function()if not P then
    return;
end
;
if L:FindFirstChild("\z H\z um\z  \x61no\105\z\x64R\x6Fo\u{0074}\x50a\114\116")and game:GetService("P\u{006C}\97\121\er\115").LocalPlayer.Character and game:GetService("\80la\ye\x72s").LocalPlayer.Character:FindFirstChild('\z H\u{0075}ma\zn\u{06F}i\100Root\80art')then
    if L.BodyEffects.Attacking.Value and(L.HumanoidRootPart.Position-game:GetService('\80l\97y\101r\115').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=10 then
        repeat
            game:GetService('\82\e\112l\105ca\116edSt\111\114a\x67\u{065}').MainEvent:FireServer("Bloc\z  k",true);
            task.wait();
        until L.BodyEffects.Attacking.Value~=true or not P;
        game:GetService('\Rep\x6C\zi\99\97\116ed\St\u{006F}rage').MainEvent:FireServer("Blo\x63k",false);
    end
    ;
end
;
end
;
end,t=function(M)local P=M[0];
return function()if tick()-lastanimationsync<SYNC_INTERVAL then
    return;
end
;
lastanimationsync=tick();
if not(P[3][P[2]]and P[3][P[2]].Parent)then
    return;
end
;
clone_hum=P[3][P[2]]:FindFirstChildOfClass('\u{0048}\u{75}mano\u{0069}d');
clone_anim=clone_hum and clone_hum:FindFirstChildOfClass("A\110\z  i\zm\97tor");
char_hum=char and char:FindFirstChildOfClass('\x48u\z  manoi\x64');
char_anim=char_hum and char_hum:FindFirstChildOfClass('An\u{0069}\u{6D}at\or');
if not clone_anim or not char_anim then
    return;
end
;
for M,M in pairs(clone_anim:GetPlayingAnimationTracks())do
    M:Stop();
end
;
for M,M in pairs(char_anim:GetPlayingAnimationTracks())do
    local P=Instance.new('\65n\u{69}\109\97t\zi\on');
    P.AnimationId=M.Animation.AnimationId;
    local L=clone_anim:LoadAnimation(P);
    L:Play();
    L.TimePosition=M.TimePosition;
    L:AdjustSpeed(M.Speed);
end
;
end
;
end,io=function()return function(M)if M:IsA("T\u{006F}\u{6F}l")and not table.find(ignored_tools,M.Name)and not table.find(_G.multi_gun,M.Name)then
    refreshtoolist();
end
;
end
;
end,gY=string.pack,QD=function(M,M,P,L,t,B)B=L[0X20](t);
P=L[0B100000__](t);
M=L[0X20__](t);
return M,B,P;
end,YZ=bit32.rshift,JY=function(M,P,L)L[11448]=-4420414820+((L[29493]==M.CY[4]and M.CY[0b100]or M.CY[2])-L[5826]+M.CY[0B11]+L[0X3Bda]);
P=(-0X32+((M.iZ((L[0X16C2]~=P and M.CY[0x2]or M.CY[0B111])+M.CY[0X3]))>=L[26436]and L[1052]or L[20683]));
L[14717]=P;
return P;
end,_Y=bit32,id=function(M)local P=M[0];
local L=M[1];
return function(M,t)if t or not _G.regflyenabled or not _G.regflyk then
    return;
end
;
if M.UserInputType==Enum.UserInputType.Keyboard then
    local t=M.KeyCode;
    if t==_G.regflyk then
        CCRegFly.Flying=not CCRegFly.Flying;
        if CCRegFly.Flying then
            L();
        else P();
        end
        ;
    end
    ;
    if t==Enum.KeyCode.W then
        CCRegFly.Keys.w=true;
    end
    ;
    if t==Enum.KeyCode.A then
        CCRegFly.Keys.a=true;
    end
    ;
    if t==Enum.KeyCode.S then
        CCRegFly.Keys.s=true;
    end
    ;
    if t==Enum.KeyCode.D then
        CCRegFly.Keys.d=true;
    end
    ;
end
;
end
;
end,OF=function(M)local P=M[0];
return function()task.wait(1);
P();
end
;
end,od=function()return function(M)local P=_G.esp_chams_original_parts[M];
if P then
    M.Material=P.Material;
    M.Color=P.Color;
end
;
end
;
end,Vo=function()return function()_G.update_ammo();
end
;
end,Wd=function(M)local P=M[0];
return function(M,L,t)if _G.__Bypass then
    return P(M,L,t);
end
;
if _G.marcoinglolllisenabled and not checkcaller()then
    if L=='\Wa\z l\k\83\x70\101\101d'and _G.basewalkspeedlol and t~=0 then
        _G.__Bypass=true;
        P(M,L,_G.basewalkspeedvalue);
        _G.__Bypass=false;
        return;
    elseif L=='J\z \x75mpPo\w\101r'and _G.jumpowerlol and t~=0 then
            _G.__Bypass=true;
            if M.UseJumpPower==false then
                M.UseJumpPower=true;
            end
            ;
            P(M,L,_G.jumpowervalue);
            _G.__Bypass=false;
            return;
        end
        ;
    end
    ;
    return P(M,L,t);
end
;
end,TD=function(M,M,P,L)M+=((L>0B1111111 and L-0X80 or L)*P);
return M;
end,LD=function(M,P,L,t)local B;(t)[0X1d__]=nil;(t)[0X1E]=(nil);
t[31]=(nil);
P=0X2A;
while true do
    B,P=M:jY(t,L,P);
    if B~=24374 then
    else break;
    end
    ;
end
;(t)[0B100000]=(M.SY.create);(t)[33]=(function()local L,B,A,c;
for s=0X6__1,0X12D,0X52 do
    L,c,A,B=M:uD(t,c,A,s);
    if L==-0x2__ then
        return B;
    end
    ;
end
;
end);(t)[34]=(function()return M:fD(t);
end);(t)[0x23]=nil;(t)[0X24]=nil;
t[0X25]=nil;(t)[0X26]=nil;
P=0B1011100;
return P;
end,X=function()return function()tool_values={};
if multi_equip_player:FindFirstChild("B\97c\zkpa\ck")then
    for M,M in ipairs(multi_equip_player.Backpack:GetChildren())do
        if M:IsA('T\111o\108')and not table.find(ignored_tools,M.Name)then
            table.insert(tool_values,M.Name);
        end
        ;
    end
    ;
end
;
if char then
    for M,M in ipairs(char:GetChildren())do
        if M:IsA('Tool')and not table.find(ignored_tools,M.Name)and not table.find(tool_values,M.Name)then
            table.insert(tool_values,M.Name);
        end
        ;
    end
    ;
end
;
Options.ToolSelector.Values=tool_values;
current_selections={};
for M,M in ipairs(_G.multi_gun)do
    if table.find(tool_values,M)then
        current_selections[M]=true;
    end
    ;
end
;
if next(current_selections)then
    Options.ToolSelector:SetValue(current_selections);
end
;
end
;
end,wo=function(M)local P=M[0];
return function()if P=="\97p\z\x70\z  ly"then
    Batch(workspace:GetDescendants(),applysize,text_delay,apply_text);
else Batch(workspace:GetDescendants(),applysize,text_delay,CleanTextures);
end
;
end
;
end,Gd=function()return function()CCRegFly.Flying=false;
end
;
end,PY=function(M,P,L,t,B)local A;
repeat
    A,P=M:NY(t,B,P,L);
    if A==0X9Df_4 then
        continue;
    else if A~=31913 then
        else break;
        end
        ;
    end
    ;
until false;(t)[0X18]=M.sY;(t)[0X19]=(nil);
return P;
end,K=function()return function(M)return M.Character and M.Character:FindFirstChild("Bo\z\x64\z\121\69ff\u{0065}cts")and M.Character.BodyEffects:FindFirstChild("\u{53}\u{0044}eat\h")and M.Character.BodyEffects['\x53\x44eat\104'].Value;
end
;
end,BF=function()return function(M,P)local L=_G.hit_effects_assets[P];
if L and M.Character and M.Character:FindFirstChild("UpperT\or\115o")then
    local P=L:Clone();
    P.Parent=workspace;
    if P.PrimaryPart then
        P:SetPrimaryPartCFrame(M.Character.UpperTorso.CFrame);
    end
    ;
    apply_colors(P);
    table.insert(_G.hit_effect_queue,{player=M,effect=P,start_time=tick()});
end
;
end
;
end,mF=function(M)local P=M[0];
return function(M)task.spawn(function()if not _G.bullet_tracers_enabled then
    return;
end
;
if M.Name~="\BULLE\u{054}\_\x52AY\83"then
    return;
end
;
if M:GetAttribute('O\x77\110e\114Cha\z r\z  \x61\ct\x65\114')~=game.Players.LocalPlayer.Name then
    return;
end
;
task.wait();
if M and M.Parent==P then
    pcall(M.Destroy,M);
end
;
end);
end
;
end,Go=function(M)local P=M[0];
return function(M)if _G.ragebot_active then
    for L,t in ipairs(equipped_tools)do
        if t==M then
            table.remove(equipped_tools,L);
            break;
        end
        ;
    end
    ;
    task.defer(function()if not P()and not getgenv().is_v3_buying and not _G.RefillingAmmo then
        equip_tools();
    end
    ;
end);
end
;
end
;
end,S=function()return function()return LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA('\u{0054}o\111l');
end
;
end,yo=function(M)local P=M[0];
return function(M)P(M);
end
;
end,MF=function(M)local P=M[0];
return function()task.wait(0.1);
P();
end
;
end,qF=function()return function()if not _G.Tracker or not _G.tracker_running then
    return;
end
;
if not _G.tracking_player_selected then
    return;
end
;
if game:GetService("Pla\x79er\115").LocalPlayer.Character and game:GetService('\u{050}laye\z rs').LocalPlayer.Character:FindFirstChild("B\u{6F}\100\x79E\u{66}\x66e\c\116s")and game:GetService('Playe\114s').LocalPlayer.Character.BodyEffects:FindFirstChild('\u{4B}\.\z\x4F')then
    local M=game:GetService("\u{050}lay\z ers").LocalPlayer.Character.BodyEffects['K\46\u{4F}'].Value;
    if M and not _G.tracker_last_ko_you then
        _G.tracker_kills_them=_G.tracker_kills_them+1;
        Library:Notify('\x79ou\x20d\i\x65\100\32| '.._G.tracker_kills_you..'\x20\- '.._G.tracker_kills_them,5.5);
    end
    ;
    _G.tracker_last_ko_you=M;
end
;
if _G.tracking_player_selected.Character and _G.tracking_player_selected.Character:FindFirstChild('B\u{06F}dy\x45f\z fe\u{0063}t\zs')and _G.tracking_player_selected.Character.BodyEffects:FindFirstChild('\z\K\46O')then
    local M=_G.tracking_player_selected.Character.BodyEffects["K.O"].Value;
    if M and not _G.tracker_last_ko_them then
        _G.tracker_kills_you=_G.tracker_kills_you+1;
        Library:Notify("they\32di\u{0065}d\u{20}| ".._G.tracker_kills_you.." -\x20".._G.tracker_kills_them,5.5);
    end
    ;
    _G.tracker_last_ko_them=M;
end
;
if _G.tracker_kills_you>=_G.TrackerScore or _G.tracker_kills_them>=_G.TrackerScore then
    if _G.tracker_kills_you>_G.tracker_kills_them then
        Library:Notify("yo\u{75}\ \z \w\x6Fn\32".._G.tracker_kills_you..' -\x20'.._G.tracker_kills_them,12);
    else Library:Notify('t\104\101y \119on\32'.._G.tracker_kills_you.." - ".._G.tracker_kills_them,12);
    end
    ;
    _G.tracker_running=false;
    _G.tracker_active=false;
    _G.tracker_score_locked=false;
    tracker_score_slider:SetDisabled(false);
end
;
end
;
end,kD=function(M,M,P)P=M[0X477E];
return P;
end,G=function()return function(M,P)if P then
    return;
end
;
if M.UserInputType==Enum.UserInputType.Keyboard then
    local P=M.KeyCode;
    if P==v3_settings_silent_aim['\83\x69l\ent\u{41}im']["Keyb\x69n\x64"]then
        v3_settings_silent_aim['\Si\u{06C}\u{65}n\116A\x69m']['Ena\z  \u{062}l\101d']=not v3_settings_silent_aim['\83\u{0069}\zl\e\u{6E}\116A\u{0069}m']["Ena\98\108\z  e\u{64}"];
        silentaim.circle.Visible=v3_settings_silent_aim['S\105lentA\u{069}\z \109']['En\x61\98\x6C\101d']and v3_settings_silent_aim["S\u{069}\108\101\110\ztA\x69m"]['Sh\111\119\F\79\x56'];
        silentaim.outline.Visible=v3_settings_silent_aim['\S\x69\l\u{0065}n\116\zAim']['\69\110\z  a\u{62}\z \108ed']and v3_settings_silent_aim['\z  S\x69l\x65\u{006E}t\u{41}im']["O\x75t\76ine"]['\69\110\u{061}bl\z  \x65\z  d'];
        if not v3_settings_silent_aim["SilentAim"]["\69na\zb\x6Ced"]then
            silentaim.locked_target=nil;
        end
        ;
    end
    ;
end
;
end
;
end,GY=function(M,P,L,t)L={};
t[0B1]=M.qY;(t)[2]=9007199254740992;
t[0X3]=nil;
P=(nil);
t[0B100]=nil;
return P,L;
end,CY={48782,3794474677,625940217,1422090498,3559448832,802703998,3533280635,2617053725,1986264858},SF=function()return function(M,P)if not player.Character then
    return;
end
;
if not _G.v3_assets[M]then
    return;
end
;
local L=player.Character;
local t=L:FindFirstChild("H\117\109an\x6Fid\R\x6Fo\116\z\x50\z  art");
if not t then
    return;
end
;
local B=typeof(P)=='Vecto\1143'and P or Vector3.new(0,0,0);
if M:lower()=='\z\x68\u{65}ll\zi\zsh'then
    local P=L:FindFirstChild("UpperTor\u{0073}o")or L:FindFirstChild("\z  Tor\x73o");
    if not P then
        return;
    end
    ;
    local A=game:GetObjects('\z \x72\98x\u{61}sset\i\u{0064}://'.._G.v3_assets.hellish)[1];
    if not A or not A:IsA('\BaseP\97\114t')then
        return;
    end
    ;
    strip_scripts(A);
    A.Parent=L;
    A.CFrame=P.CFrame*CFrame.new(B);
    A.CanCollide=true;
    A.Anchored=false;
    apply_neon(A);
    local L=Instance.new('Wel\100C\u{006F}\u{06E}\z  s\116r\97\int');
    L.Part0=A;
    L.Part1=P;
    L.Parent=A;
    table.insert(aura_parts,A);
    _G.hellish_aura_active=A;
    for P,P in ipairs(A:GetDescendants())do
        color_all(P,_G.auracolor);
        table.insert(aura_parts,P);
    end
    ;
    local P=A:FindFirstChild("V\195\178ng",true);
    if P then
        local L=P.WorldPosition-t.Position;
        P.Parent=t;
        P.Position=L+B;
        for L,L in ipairs(P:GetDescendants())do
            color_all(L,_G.auracolor);
            table.insert(aura_parts,L);
        end
        ;
    end
    ;
    return;
end
;
local P=get_or_create_v3_folder();
if not P then
    return;
end
;
local L=game:GetObjects('rbxa\x73se\z t\u{69}\x64:\x2F\z  /'.._G.v3_assets[M])[1];
if not L then
    return;
end
;
strip_scripts(L);
if typeof(L)=="\73nstan\x63\ze"then
    for A,A in ipairs(L:GetChildren())do
        strip_scripts(A);
        local c=A:Clone();
        strip_scripts(c);
        if c:IsA("\66\97s\e\Pa\u{72}\116")then
            c.CFrame=c.CFrame+B;
        end
        ;
        c.Parent=P;
        apply_neon(c);
        table.insert(aura_parts,c);
        for A,A in ipairs(c:GetDescendants())do
            color_all(A,_G.auracolor);
            table.insert(aura_parts,A);
        end
        ;
    end
    ;
end
;
local A=P:FindFirstChild('V\195\178ng',true);
if A then
    local c=A.WorldPosition-t.Position;
    A.Parent=t;
    A.Position=c+B;
    for t,t in ipairs(A:GetDescendants())do
        color_all(t,_G.auracolor);
        table.insert(aura_parts,t);
    end
    ;
end
;
L:Destroy();
_G[M.."\_\u{061}u\u{72}a_a\u{63}t\x69v\x65"]=P;
end
;
end,sY=coroutine.wrap,ld=function()return function(M)if char and char:FindFirstChild('H\117\m\za\110\111\105\d\x52\ootP\x61r\x74')and char:FindFirstChild("\u{48}\u{0075}m\97no\z id")then
    if _G.SpinBot and _G.spinenabled then
        char.HumanoidRootPart.CFrame=char.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(_G.SpinBotSpeed)*M,0);
        char.Humanoid.AutoRotate=false;
    else char.Humanoid.AutoRotate=true;
    end
    ;
end
;
end
;
end,zD=function(M,M)(M)[0X1b]=-(0X37 or 0x6d);
return;
end,XY=function(M,P,L)(L)[0X4EAA]=-1422090391+((M.RZ((M.xZ(L[26425]))+L[0XEA7],(L[0x7335])))<L[0X005971]and M.CY[0X4]or L[0X6_744]);(L)[11777]=(0X36+(M.OZ((M.OZ(L[17686]<=L[0X6__7_39]and L[1052]or L[3751]))-M.CY[1])));
P=(1+(M.RZ((M.YZ(M.CY[9]-P>=L[0X6739]and L[5826]or L[0Xea7],(L[0x432f]))),(L[17199]))));
L[0X8b7]=(P);
return P;
end,dF=function()return function()clear_all();
if _G.flow_aura_enabled then
    flow_aura();
end
;
if _G.bubble_aura_enabled then
    create_aura('bu\98\z\u{062}l\101');
end
;
if _G.wind_aura_enabled then
    create_aura("\119ind");
end
;
if _G.spiral_aura_enabled then
    create_aura("\x73\z\x70\u{0069}r\z  a\zl");
end
;
if _G.hellish_aura_enabled then
    create_aura('\104e\108\x6Cis\104');
end
;
if _G.diamond_aura_enabled then
    create_aura('\u{0064}\z\x69a\109\z ond');
end
;
if _G.lightzone_aura_enabled then
    create_aura("\li\z\u{0067}h\116\122o\x6Ee");
end
;
if _G.blossom_aura_enabled then
    create_aura('\z  bl\u{6F}\x73s\111\m');
end
;
if _G.fallingstar_aura_enabled then
    create_aura("\z fa\l\z  \108\zi\u{6E}gsta\114");
end
;
if _G.odin_aura_enabled then
    create_aura('\111\u{064}\u{69}n',Vector3.new(0,-3.3,0));
end
;
if _G.redmoon_aura_enabled then
    create_aura("re\dm\111o\110",Vector3.new(0,-3.3,0));
end
;
if _G.spring_aura_enabled then
    create_aura("\z  sp\u{0072}\zi\x6Eg",Vector3.new(0,-3.3,0));
end
;
if _G.moon_aura_enabled then
    create_aura('m\x6Fon',Vector3.new(0,-1.2,0));
end
;
if _G.evil_aura_enabled then
    create_aura('evi\108');
end
;
if _G.satarn_aura_enabled then
    create_aura("\u{0073}\x61\x74\u{0061}\u{72}\110",Vector3.new(0,2.3,0));
end
;
if _G.pim_aura_enabled then
    create_ground('\u{70}\105m');
end
;
if _G.wrap_aura_enabled then
    create_ground('w\z\u{72}ap');
end
;
if _G.sine_aura_enabled then
    create_ground("s\105\110\e");
end
;
if _G.twine_aura_enabled then
    create_ground('\x74\z\wi\110\x65');
end
;
end
;
end,WY=function(M,P,L,t)(P)[0X10]=nil;
L=(0X3E);
repeat
    if L==0x3e then
        P[0Xb]=(M.AY.yield);
        P[0XC]=M.ZZ;
        P[0Xd]=(M.SY.move);
        if not t[0X6B10]then
            L=0B10000_1+((M.iZ((M.YZ((M.QZ(M.CY[3])),(t[0x3bda])))))-t[0X7335]);(t)[27408]=(L);
        else L=M:zY(t,L);
        end
        ;
    else if L==0x5 then
            (P)[0B1110]=(nil);(P)[0B1111]=M.tZ;
            if not t[17199]then
                t[0X16_c2]=-2232612321+(M.vZ((M.vZ(t[0X41c],(t[0x3BdA])))-t[0XEa7]+M.CY[6],(t[15322])));
                L=(-4126144475+(M.GZ((M.QZ(t[0x41c]))+L+M.CY[0X5],M.CY[4],M.CY[0x3])));
                t[17199]=(L);
            else L=t[0X432F__];
            end
            ;
        else if L==32 then
                (P)[0X10]=(function(...)return(...)[...];
            end);
            break;
        end
        ;
    end
    ;
end
;
until false;(P)[17]={};(P)[0X12]=(4503599627370496);
P[0b10011_]=nil;(P)[0x14]=nil;
return L;
end,vo=function()return function()TOOLS_TO_USE={};
for M,M in ipairs(_G.multi_gun)do
    local P=LocalPlayer.Backpack:FindFirstChild(M);
    if P and P:FindFirstChild("G\117\110\z  S\u{063}r\105\112\z\116")then
        P.Parent=char;
    end
    ;
end
;
for M,M in pairs(char:GetChildren())do
    if M:IsA('\84oo\l')and table.find(_G.multi_gun,M.Name)then
        table.insert(TOOLS_TO_USE,M);
    end
    ;
end
;
if multithem then
    for M,M in ipairs(TOOLS_TO_USE)do
        if M and M.Parent==char then
            pcall(function()if M.Activate then
                M:Activate();
            end
            ;
            if M:FindFirstChild("\x41mm\x6F")and M.Ammo.Value<=1 then
                ReplicatedStorage.MainEvent:FireServer("\Rel\u{06F}a\100",M);
            end
            ;
        end);
    end
    ;
end
;
end
;
end
;
end,yF=function(M)local P=M[0];
return function()if P[3][P[2]]and P[3][P[2]].Parent then
    P[3][P[2]].TextColor3=_G.auto_kill_color or Color3.fromRGB(227,162,162);
    P[3][P[2]].FontFace=_G.status_font;
end
;
end
;
end,ZF=function()return function()if clock_time_enabled and Lighting.ClockTime~=current_clock then
    Lighting.ClockTime=current_clock;
end
;
end
;
end,Io=function(M)local P=M[0];
return function()repeat
    task.wait();
until P:FindFirstChild('\z\u{48}\u{0075}\109a\z\110o\zid\82\z  o\u{06F}tPart');
if _G.semi_godmode_last_cframe then
    P.HumanoidRootPart.CFrame=_G.semi_godmode_last_cframe;
end
;
end
;
end,EF=function()return function(M)if not player.Character then
    return;
end
;
if not _G.v3_assets.ground[M]then
    return;
end
;
local P=player.Character:FindFirstChild("\u{48}u\109\97n\x6F\z\x69dRoo\x74\u{50}a\x72t");
if not P then
    return;
end
;
local L=game:GetObjects("r\98xa\u{73}s\et\zi\z\100:/\z\47".._G.v3_assets.ground[M])[1];
if not L then
    return;
end
;
strip_scripts(L);
local M=L:FindFirstChildWhichIsA("\zA\116tachme\x6Et",true);
if not M then
    L:Destroy();
    return;
end
;
strip_scripts(M);
local t=Instance.new("Atta\z\x63\104m\x65n\z  t");
t.Parent=P;
t.Position=Vector3.new(0,-2.65,0);
for P,P in ipairs(M:GetChildren())do
    if P:IsA('Part\x69cl\u{0065}E\109\z it\116\x65\z r')then
        local M=P:Clone();
        M.Color=ColorSequence.new(_G.auracolor);
        M.Parent=t;
        table.insert(ground_parts,M);
    end
    ;
end
;
table.insert(ground_attachments,t);
L:Destroy();
end
;
end,kd=function()return function()lastmsg=nil;
newmsg=nil;
while true do
    if _G.trashtalk and _G.trashtalktext and type(_G.trashtalktext)=='t\x61b\x6C\x65'then
        ttselected={};
        for M,P in pairs(_G.trashtalktext)do
            if P then
                table.insert(ttselected,M);
            end
            ;
        end
        ;
        if#ttselected>0 then
            repeat
                newmsg=ttselected[math.random(1,#ttselected)];
            until#ttselected==1 or newmsg~=lastmsg;
            lastmsg=newmsg;
            msg=newmsg;
            game.TextChatService.TextChannels.RBXGeneral:SendAsync(msg);
        end
        ;
        task.wait(_G.trashtalkdelay);
    else task.wait(_G.trashtalkdelay);
    end
    ;
end
;
end
;
end,bd=function()return function()for M,M in pairs(_G.esp_highlight_instances)do
    if M and M.Parent then
        M:Destroy();
    end
    ;
end
;
_G.esp_highlight_instances={};
end
;
end,EZ=function(M,P,L,t,B,A,c)P=nil;
c=101;
repeat
    if c==0X65 then
        L[0b101001]=function()local s;
        s=(nil);
        local O,E,D;
        E,s,D,O=M:dD(L,D,E);
        if s~=-2 then
        else return O;
        end
        ;
        local V,w,h,o;
        V,o,h,D,w=M:sD(V,o,w,L,h,D);
        local z,R,N,q=(L[0X20](V));
        D=(0B1_100001);
        repeat
            if not(D>59)then
                E[8]=(q);
                break;
            elseif D<=76 then
                    D=M:eD(E,w,D);
                    continue;
                else q,R,N=M:QD(q,N,L,V,R);
                    D=76;
                end
                ;
            until false;
            for J=0x005,0b1011101,0X2C do
                if J>0X5 then
                    if J~=0x5D then
                        (E)[0X5]=(o);
                        continue;
                    else(E)[9]=(z);
                    end
                    ;
                else(E)[3]=N;
                    continue;
                end
                ;
            end
            ;
            for J=0B10001,0X15E__,0X4B do
                if J<92 then
                    E[0X4]=h;
                    continue;
                elseif J>0xa7 then
                        E[1]=L[36]();
                        return E;
                    else if J<0xA7 and J>17 then
                            E[0Xa]=R;
                        else if not(J<0XF2 and J>0b1__011100)then
                            else for J=0b1,V,0B1 do
                                    local V,e,y,a,f;
                                    f,e,V,y,a=M:vD(L,f,y,a,V,e);
                                    local T,Y,m,r,K;
                                    K,r,f,m,Y,T=M:xD(y,K,r,T,a,e,Y,m,L,f);
                                    D=nil;
                                    s,f,D=M:GD(J,R,N,V,L,K,Y,D,f);
                                    if not(s)then
                                    else return M.OY(s);
                                    end
                                    ;
                                    D,s,f,O=M:PD(h,a,f,J,K,T,q,R,L,o,z,E,m,w,r,D);
                                    if s==-0B1 then
                                        return;
                                    else if s==-0X2 then
                                            return O;
                                        end
                                        ;
                                    end
                                    ;
                                end
                                ;
                                E[6]=L[0X24]();
                                continue;
                            end
                            ;
                        end
                        ;
                    end
                    ;
                end
                ;
            end
            ;
            if not(not t[18302])then
                c=M:kD(t,c);
            else c=-0X071+(((M.CY[0x08]>t[25563]and t[0X63Db__]or t[0X6b10])>=M.CY[0B11]and t[11448]or t[0xea7])-t[0x432f]<=t[25563]and t[11448]or t[0X6fAE]);(t)[18302]=(c);
            end
            ;
        elseif c==0X0 then
                A=function()local s,O,E,D;
                O,D,E=M:UZ(D,E,L);
                if O==-0B1 then
                    return;
                end
                ;
                O,D,s=M:AZ(D,L,E);
                if O==-1 then
                    return;
                else if O==-0X002 then
                        return s;
                    end
                    ;
                end
                ;
            end
            ;
            if not(not t[0X48c_5])then
                c=M:SZ(c,t);
            else c=0X6__C24c7D0+(M.CY[0x6]+t[0x41_C]-t[18899]-M.CY[0x8__]+t[2231]);
                t[18629]=c;
            end
            ;
            continue;
        else if c==95 then
                B=(function(...)return(...)();
            end);
            P=A();
            if not t[9056]then
                c=(-0x1_37FD0+((M.YZ(M.CY[0X8]+t[27408],(t[25563])))-t[15322]+t[0XeA7]));(t)[0x2360]=c;
            else c=t[0X2360];
            end
            ;
        else if c==0x32 then
                if L[33]==L[7]then
                    if L[0B1000]then
                        (L)[15]=L[0X22];
                        return B,A,-0x2,c,P,L[0B1001_0]<=L[0X25_];
                    end
                    ;
                end
                ;
                if L[0X12]~=L[37]then
                    M:nZ(L);
                end
                ;
                L[0X7][0XF]=M.eY;
                break;
            end
            ;
        end
        ;
    end
    ;
until false;
c=(0X2f);
return B,A,nil,c,P;
end,Hd=function(M)local P=M[0];
local L=M[1];
return function()if not P.enabled then
    P.heartbeat_conn:Disconnect();
    P.heartbeat_conn=nil;
    return;
end
;
if not L:validate()then
    return;
end
;
local M=L:get_root();
if not M then
    return;
end
;
P.real_cframe=M.CFrame;
local L=(P.follow_player and M.CFrame)or P.target_cframe or P.real_cframe;
M.CFrame=L;
RunService.RenderStepped:Wait();
M.CFrame=P.real_cframe;
end
;
end,YD=function(M)return 0XCF_;
end,H=function()return function(M)multi_equip_player=game:GetService('\80l\x61\x79e\x72\z s').LocalPlayer;
char=M;
M:WaitForChild("\72\u{0075}man\x6F\u{069}d");
hookbackpack(multi_equip_player:WaitForChild('Bac\107pack'));
if multiequipenabled then
    for P,P in ipairs(_G.multi_gun)do
        local L=multi_equip_player.Backpack:FindFirstChild(P);
        if L then
            L.Parent=M;
        end
        ;
    end
    ;
end
;
end
;
end,gZ=function(M,P)local L;
while true do
    L=M:bZ(P);
    if L==-1 then
        return-0X001;
    end
    ;
end
;
return nil;
end,_F=function()return function()for M,M in ipairs(aura_parts)do
    if M and M.Parent then
        color_all(M,_G.auracolor);
        for P,P in ipairs(M:GetDescendants())do
            color_all(P,_G.auracolor);
        end
        ;
    end
    ;
end
;
for M,M in ipairs(ground_parts)do
    if M and M.Parent then
        M.Color=ColorSequence.new(_G.auracolor);
    end
    ;
end
;
end
;
end,AZ=function(M,P,L,t)local B,A,c=0X52;
repeat
    P,c,A,B=M:oZ(L,P,B,c);
    if A~=0X681B then
    else break;
    end
    ;
until false;
if L[0b0100111]~=t then
else A=M:gZ(L);
    if A==-0B1 then
        return-0x1,P;
    end
    ;
end
;
for s=0x4e,0x8F,0B1000001 do
    if s==0B1001110 then
        (L)[0X1c]=L[0B100000](P*0b11);
        continue;
    else if s==0X8F then
            for s=0x1_,P do
                c[s]=L[0X2__9]();
            end
            ;
        end
        ;
    end
    ;
end
;
for s=1,#L[0B1_1100],0B11 do
    M:aZ(L,c,s);
end
;
A=nil;
for s=0x60,228,66 do
    if s==96 then
        if not(t)then
        else for t=0X6F,0XF6,44 do
                if t<0X9B then
                    L[0X7][0X4]=(L[0X1]);
                else if t>0X6F then
                        (L[7])[5]=c;
                        break;
                    end
                    ;
                end
                ;
            end
            ;
        end
        ;
        A=c[L[0X24]()];
        continue;
    else if s==0x0A2_ then
            (L)[0X1]=(nil);
        else if s==228 then
                L[28]=M.qY;
            end
            ;
        end
        ;
    end
    ;
end
;
B=(75);
repeat
    if B==75 then
        B=M:KZ(B,L);
    else return-0B10,P,A;
    end
    ;
until false;
return nil,P;
end,aZ=function(M,M,P,L)M[28][L][M[0X1c][L+1]]=P[M[0X01c][L+0X2]];
end,LY=function()return function(M)name_to_check=M.Name..(M.DisplayName or'');
contains_bracket_or_emoji=false;
for M=1,#name_to_check do
    local P=name_to_check:sub(M,M);
    if P:match('[\37\u{05B}%]]')or P:match('[%z\1-\z\127\194\45\244]\z\x5B\128\-\191]\42')and P:byte()>127 then
        contains_bracket_or_emoji=true;
        break;
    end
    ;
end
;
if contains_bracket_or_emoji then
    if _G.antimodmode=='\75i\99\k'then
        game.Players.LocalPlayer:Kick("\65\u{020}su\115\112\u{0069}\99\u{069}o\z \117s p\z \x6C\97y\u{65}r h\97\115 join\101\100 \121\z o\x75r \game\u{02E}");
    elseif _G.antimodmode=="N\111\x74i\102y"and not NotificationSent then
            NotificationSent=true;
            Library:Notify('\65 \115\117\115\x70i\99\io\x75s\u{0020}\z\pl\97y\101r\u{020}\z has \106\zo\zined, \u{0062}e\32ca\z  r\101\u{66}ul\.',15);
        end
        ;
    end
    ;
end
;
end,VD=function(M,M,P,L,t)if P[16]~=P[31]then
    (t)[L]=(M);
end
;
end,IZ=function(M,M,P,L)P=M[0B100_000](L);
return P;
end,VF=function()return function(M)_G.player_health_cache[M.UserId]=nil;
end
;
end,xF=function()return function()for M,M in pairs(_G.auras_highlight_instances)do
    if M then
        M:Destroy();
    end
    ;
end
;
_G.auras_highlight_instances={};
end
;
end,E=function()return function(M,P)rayparmslmao=RaycastParams.new();
rayparmslmao.FilterType=Enum.RaycastFilterType.Blacklist;
rayparmslmao.FilterDescendantsInstances={lp.Character};
rayresultsdudelol=workspace:Raycast(M,P.Position-M,rayparmslmao);
return rayresultsdudelol and not rayresultsdudelol.Instance:IsDescendantOf(P.Parent);
end
;
end,OY=unpack,tD=function(M,P,L)while P[15]do
    M:ZD(L,P);
end
;
end,xo=function()return function(M)if M:IsA("\To\z o\x6C")and not table.find(ignored_tools,M.Name)and not table.find(_G.multi_gun,M.Name)then
    refreshtoolist();
end
;
end
;
end,fo=function(M)local P=M[0];
local L=M[1];
return function()if not(_G.TriggerBotEnabled and TGBLOL)then
    return;
end
;
local M=game.Players.LocalPlayer:GetMouse().Target;
local t=M and M:FindFirstAncestorOfClass("\77\x6F\u{0064}el");
local B=t and game.Players:GetPlayerFromCharacter(t);
if B and P(B)and M:IsDescendantOf(t)then
    L(B);
end
;
task.wait(0.002);
task.wait(1);
end
;
end,a=function()return function()data={};
supported={['[\72\i\x67h-\u{004D}\edi\x75\u{006D} \u{41}rm\z\111r]']='[Hig\u{0068}-M\101di\z  u\x6D A\114\u{6D}\x6Fr]',["[\70\u{69}\x72e \65\z  r\z m\111r\u{05D}"]="\u{05B}Fire \Ar\109\x6Fr\u{005D}",["\[K\101y\u{05D}"]='[K\x65\u{079}\x5D',["[K\z\u{06E}ife]"]='\z \x5BK\x6E\zi\102\e\]',['[\x47r\z e\zn\z a\u{0064}e]']='[\z  \Gren\z  ad\x65]',['\z  [\L\z  e\u{074}\116\x75ce\]']='\91Let\116\x75\z  ce]',['\x5B\76\u{4D}\G\]']='\z  [\u{4C}M\z\u{47}\u{5D}',['[\x4CM\G\u{20}A\zmm\111\z  ]']='[\u{04C}MG \A\109\zm\o\x5D',["\z \91Flam\101\z  \x74hro\z  we\114]"]='[\70\108a\z \u{006D}\zet\u{068}ro\wer\93',["[\F\zla\zm\ethr\111wer\x20\x41\m\z  m\111\]"]="\[\F\u{06C}\97\u{06D}\101t\x68\u{072}owe\114 A\109mo]"};
for M,P in pairs(supported)do
    for L,L in ipairs(workspace.Ignored.Shop:GetChildren())do
        if L:IsA("\z  \u{4D}\111d\z e\u{006C}")and string.find(L.Name,P,1,true)then
            data[M]=L.Name;
            break;
        end
        ;
    end
    ;
end
;
return data;
end
;
end,eZ=bit32.bxor,N=function(M)local P=M[1];
local L=M[0];
return function()if not player.Character then
    return;
end
;
local M=player.Character:FindFirstChildOfClass("\84o\111l");
if M~=last_tool then
    P(M);
    last_tool=M;
end
;
if _G.rapidfire and M and M:FindFirstChild("\z G\x75\110S\x63ri\112\116")and not rapidfire.tool_hooks[M]then
    L(M);
end
;
end
;
end,yZ=function(M,M,P,L)P=(M[36]()-0x70f2);
L=(0X9);
return P,L;
end,jd=function(M)local P=M[1];
local L=M[2];
local t=M[0];
return function()if not getgenv().is_v3_buying then
    t[3][t[2]]:Disconnect();
    return;
end
;
L:move_to(P);
_G.server_indicator_cframe=P;
RunService.RenderStepped:Wait();
L:sync_with_player();
end
;
end,pF=function(M)local P=M[1];
local L=M[0];
return function(M)if not _G.bullet_tracers_enabled then
    return;
end
;
local t=_G.bullet_tracer_fade or 1;
for B=#active_tracers,1,-1.0 do
    local A=active_tracers[B];
    A.elapsed=A.elapsed+M;
    local M=(A.elapsed/A.lifetime)*t;
    if M>=1 then
        if A.line then
            A.line:Remove();
        end
        ;
        if A.outline then
            A.outline:Remove();
        end
        ;
        table.remove(active_tracers,B);
    else local t,B=L(A.start);
        local c,s=L(A['e\110\u{064}']);
        if B and s then
            if A.line then
                A.line.From=t;
                A.line.To=c;
                A.line.Transparency=_G.bullet_tracer_transparency*(1-M);
                A.line.Color=P(_G.bullet_tracer_color_sequence.Keypoints[1].Value,_G.bullet_tracer_color_sequence.Keypoints[3].Value,M);
                A.line.Visible=true;
            end
            ;
            if A.outline then
                A.outline.From=t;
                A.outline.To=c;
                A.outline.Transparency=_G.bullet_tracer_transparency*(1-M);
                A.outline.Color=_G.bullet_tracer_outline_color;
                A.outline.Visible=true;
            end
            ;
        else if A.line then
                A.line.Visible=false;
            end
            ;
            if A.outline then
                A.outline.Visible=false;
            end
            ;
        end
        ;
    end
    ;
end
;
end
;
end,sd=function()return function(M,P)local L=_G.hit_effects_assets[P];
if L and M.Character and M.Character:FindFirstChild("\z\u{0055}pp\u{65}\z\x72To\114so")then
    local P=L:Clone();
    P.Parent=workspace;
    if P.PrimaryPart then
        P:SetPrimaryPartCFrame(M.Character.UpperTorso.CFrame);
    end
    ;
    apply_colors(P);
    table.insert(_G.hit_effect_queue,{player=M,effect=P,start_time=tick()});
end
;
end
;
end,nZ=function(M,P)local L=(0B110__1100);
repeat
    if not(L<0X6c)then
        L=0x5b;(P[7])[0XB]=M.vZ;
    else(P[0X7])[0X7]=(M._Y.countrz);
        break;
    end
    ;
until false;(P[0B111])[0B10_000]=M.EY;
end,ZZ=string.gsub,cd=function(M)local P=M[4];
local L=M[2];
local t=M[0];
local B=M[1];
local A=M[5];
local c=M[3];
return function(M)if B[3][B[2]]and t[3][t[2]]then
    if not getgenv().is_v3_buying then
        local B=c();
        P:move_to(B);
        _G.server_indicator_cframe=CFrame.new(B);
        RunService.RenderStepped:Wait();
        return;
    end
    ;
end
;
if not A[3][A[2]]or not t[3][t[2]]then
    return;
end
;
if not getgenv().is_v3_buying then
    real_pos=t[3][t[2]].CFrame;
    _G._VOID_REAL_FRAME=t[3][t[2]].CFrame;
    _G.v3_void_state.timer=_G.v3_void_state.timer+M;
    if _G.v3_void_state.in_void then
        void_pos=L();
        _G.server_indicator_cframe=void_pos;
        P:move_to(void_pos);
        RunService.RenderStepped:Wait();
        P:move_to(real_pos);
        if _G.v3_void_state.timer>=_G.v3_void_spam_in then
            _G.v3_void_state.in_void=false;
            _G.v3_void_state.timer=0;
        end
        ;
    else _G._VOID_REAL_FRAME=real_pos;
        _G.server_indicator_cframe=real_pos;
        if _G.v3_void_state.timer>=_G.v3_void_spam_out then
            _G.v3_void_state.in_void=true;
            _G.v3_void_state.timer=0;
        end
        ;
    end
    ;
end
;
end
;
end,RY=function(M,P,L,t,B)L=0X77;
while true do
    if L>106 then
        (P)[0x3]=unpack;
        if not B[3751]then
            L=M:ZY(L,B);
        else L=M:tY(L,B);
        end
        ;
    else if L>65 and L<119 then
            t=M.bY;
            if not B[0X5971_]then
                (B)[0X0041c]=(0X254f175__f+(((M.xZ(M.CY[0X7]))+M.CY[0b1]<M.CY[0X9]and B[15322]or M.CY[0X1])-M.CY[0b11]));
                B[20683]=-3992707079+(M.iZ((M.xZ(M.CY[0X1]))-M.CY[6]-M.CY[2]));
                L=(-3450510+((M.YZ(M.CY[0X9]+M.CY[0x7__]>=M.CY[8]and M.CY[0B111]or M.CY[4],(B[0X3bda])))+B[0XEa7]));
                B[22897]=L;
            else L=(B[22897]);
            end
            ;
            continue;
        else if not(L<0b1101010)then
            else(P)[4]=M.gY;
                break;
            end
            ;
        end
        ;
    end
    ;
end
;
P[5]=M.qY;
P[0x6_]=(nil);
return t,L;
end,QZ=bit32.countrz,Jd=function()return function()if _G.customchar==true then
    wait(1);
    tryMorph();
end
;
end
;
end,Fd=function(M)local P=M[0];
return function()if not _G.noclip then
    P(true);
end
;
end
;
end,yY=function()return function()if char and char:FindFirstChild('Hu\x6Da\u{6E}oid')and char.Humanoid:FindFirstChild("\83\hi\x72\116")then
    char.Humanoid.Shirt.ShirtTemplate="\zrb\u{78}a\ssetid:\u{002F}\z\047\u{31}31\z 761\050\055481";
end
;
end
;
end,z=function()return function()notifcation_equipped=false;
notifcation_active=false;
notifcation_boyyyyyyy=nil;
end
;
end,dd=function()return function(M)for P,P in pairs(M:GetDescendants())do
    if P:IsA("\80ar\u{0074}ic\u{006C}eE\109it\z  ter")or P:IsA('Be\z am')then
        P.Lifetime=NumberRange.new(_G.hit_effect_lifetime);
        P.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,_G.hit_effect_color_start),ColorSequenceKeypoint.new(0.5,_G.hit_effect_color_middle),ColorSequenceKeypoint.new(1,_G.hit_effect_color_end)});
    end
    ;
end
;
end
;
end,GF=function(M)local P=M[0];
return function()P();
end
;
end,pD=function(M,M,P,L,t)M=(P[0X1][L]);
t=(10);
return M,t;
end,n=function()return function()if not LocalPlayer.Character then
    return;
end
;
for M,M in ipairs(LocalPlayer.Character:GetChildren())do
    if M:IsA('\x54\111\111l')and M:FindFirstChild("\u{0041}\109\u{06D}\u{006F}")and M.Ammo.Value<=1 then
        Vars.ReplicatedStorage.MainEvent:FireServer("\R\u{065}\108\111\x61\z  d",M);
    end
    ;
end
;
end
;
end,zY=function(M,M,P)P=M[27408];
return P;
end,gD=function(M,M,P)(M)[0x1b],P=M[0X22],-M[0xf];
return P;
end,BY=function(M,P,L,t)(L)[7]={};
if not P[0X7335]then
    t=0X12+((M.iZ((M.GZ((M.YZ(P[20683],(P[15322]))),M.CY[0X6])),M.CY[0X4],M.CY[1]))<=M.CY[0B11]and P[0X003bda]or P[1052]);
    P[0X7335]=t;
else t=P[29493];
end
;
return t;
end,KD=function(M,P,L,t)if t<0X5c then
    L[0b10_0101]=(function()local B,A,c,s=L[0b100100](),(0X78);
    while true do
        if A==0X78 then
            c,A,s=M:UD(L,A,B);
            if c~=-0B10 then
            else return s;
            end
            ;
        else if A~=0X77 then
            else return M:ID(B);
            end
            ;
        end
        ;
    end
    ;
end);(L)[0X26]=function()local B;
B=M:yD(L);
return M.OY(B);
end
;
return 50306,t;
else if t>11 then
        t=M:aD(L,t,P);
        return 0Xb9F9,t;
    end
    ;
end
;
return nil,t;
end,Dd=function(M)local P=M[0];
return function()if _G.noclip and noclip_enabled then
    P(false);
end
;
end
;
end,lF=function(M)local P=M[0];
return function(M)if M~=LocalPlayer then
    _G.player_health_cache[M.UserId]=P(M);
end
;
end
;
end,ro=function(M)local P=M[0];
return function(M)P(M);
end
;
end,TY=function(...)(...)[...]=nil;
end,LF=function(M)local P=M[0];
return function(M)Options.target_player_dropdown:SetValues(get_player_names());
if _G.target_player_names[M.Name]then
    P();
end
;
end
;
end,eY=bit32.bnot,dZ=function(M)return;
end,eo=function()return function(M,P)if not P and M.UserInputType==Enum.UserInputType.MouseButton1 then
    multithem=true;
end
;
end
;
end,Y=function(M)local P=M[3];
local L=M[2];
local t=M[1];
local B=M[0];
return function()local M=Vector2.new(UserInputService:GetMouseLocation().X,UserInputService:GetMouseLocation().Y);
local A=v3_settings_silent_aim['Sil\101\z \u{6E}\u{0074}Aim']['\u{0045}nabled'];
silentaim.locked_target=A and L()or nil;
silentaim.circle.Position=M;
silentaim.circle.Radius=v3_settings_silent_aim['\83il\x65\u{06E}\u{0074}Ai\109']["\82\u{061}\100\105u\115"];
silentaim.circle.Color=v3_settings_silent_aim['S\x69\x6C\x65\110tA\im']['\70O\x56\u{43}o\lo\z\114'];
silentaim.circle.Transparency=v3_settings_silent_aim['\83i\108e\110tAim']['\u{046}\79VT\z r\97nspa\114e\z\110\99y'];
silentaim.circle.Filled=v3_settings_silent_aim['S\105le\110tAim']['\u{0046}\zil\108']["\u{45}nable\u{64}"]or false;
silentaim.circle.Visible=A and v3_settings_silent_aim['\83ilen\x74Ai\109']["Sh\u{06F}wFOV"];
local L=A and v3_settings_silent_aim["\83i\108e\z \110tAi\x6D"]['Sho\x77FO\u{56}']and v3_settings_silent_aim["Si\lent\z\65i\x6D"]["\x4F\x75\z\116\u{4C}ine"]['E\110abled'];
silentaim.outline.Visible=L;
silentaim.outline.Position=M;
silentaim.outline.Radius=silentaim.circle.Radius+1;
silentaim.outline.Thickness=2;
if not silentaim.fovLines then
    silentaim.fovLines={};
end
;
local A=tick()*0.5;
if t[3][t[2]]~=silentaim.outline.Radius or B[3][B[2]]~=L then
    for c,c in ipairs(silentaim.fovLines)do
        c:Remove();
    end
    ;
    silentaim.fovLines={};
    for c=0,P do
        local c=Drawing.new('\x4C\x69\110\z  \101');
        c.Thickness=2;
        c.Visible=L;
        table.insert(silentaim.fovLines,c);
    end
    ;
end
;
for c,s in ipairs(silentaim.fovLines)do
    local O=((c-1)/P)*2*math.pi+A;
    local E=(c/P)*2*math.pi+A;
    s.From=Vector2.new(math.cos(O)*silentaim.outline.Radius+M.X,math.sin(O)*silentaim.outline.Radius+M.Y);
    s.To=Vector2.new(math.cos(E)*silentaim.outline.Radius+M.X,math.sin(E)*silentaim.outline.Radius+M.Y);
    s.Color=(c<=P/2)and v3_settings_silent_aim['\83\105\l\101ntA\im']['\x4F\u{75}\x74L\ine']["Out\76\105\u{06E}eC\u{6F}l\111\u{72}\z \x31"]or v3_settings_silent_aim['\z \83\u{069}\x6Ce\110t\u{041}i\109']["Ou\u{074}\x4C\x69\u{6E}\u{0065}"]['\x4F\117\116\x4Cin\101C\x6Flor2'];
    s.Visible=L;
end
;
t[3][t[2]]=silentaim.outline.Radius;
B[3][B[2]]=L;
if _G.targetaimassist and silentaim.locked_target and silentaim.locked_target.Character then
    local P=silentaim.locked_target.Character:FindFirstChild(v3_settings_silent_aim["\x53\105l\101ntA\105m"]['\u{041}im\x50ar\u{74}']);
    if P then
        local L,t=cam:WorldToViewportPoint(P.Position);
        if t then
            local t=(M-Vector2.new(L.X,L.Y)).Magnitude;
            if t<v3_settings_silent_aim["S\105len\z  \u{0074}\65i\109"]['\x52\z\u{0061}\100\ziu\zs']*0.7 then
                cam.CFrame=cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position,P.Position),0.01+(getgenv().SilentAimSmoothing*(0.9-math.clamp((t/v3_settings_silent_aim['Sil\101n\116A\105\109']["\x52\97\100\105\u{0075}\x73"])^0.6,0,1))));
            end
            ;
        end
        ;
    end
    ;
end
;
end
;
end,Ro=function()return function()if not _G.flame_ragebot_enabled then
    return;
end
;
task.delay(2,function()if not _G.flame_ragebot_enabled then
    return;
end
;
saved_cf=nil;
full_cleanup();
restart_rage_process();
start_main_loop();
if game:GetService("\x50l\za\zy\101\u{072}s").LocalPlayer.Character and game:GetService('\80\z \x6C\97\y\101\x72\115').LocalPlayer.Character:FindFirstChild('\u{0048}\z um\zano\x69d')then
    if died_conn then
        died_conn:Disconnect();
    end
    ;
    died_conn=game:GetService("\u{50}la\z\x79\101rs").LocalPlayer.Character.Humanoid.Died:Connect(function()full_cleanup();
    wait_respawn_and_restart();
end);
end
;
end);
end
;
end,o=function()return function(M)task.wait(1);
Players=game:GetService('\u{0050}\108\z\97y\101rs');
LocalPlayer=Players.LocalPlayer;
task.wait(0.70);
p=LocalPlayer;
plr=LocalPlayer;
player=LocalPlayer;
lp=LocalPlayer;
LP=LocalPlayer;
pl=LocalPlayer;
char=M;
bp=LocalPlayer.Backpack;
Camera=workspace.CurrentCamera;
cam=workspace.CurrentCamera;
BackPack=LocalPlayer.Backpack;
Mouse=LocalPlayer:GetMouse();
RootPart=char:FindFirstChild("H\117\109ano\105dR\111\ot\x50art")or char:WaitForChild("\H\117\x6Da\u{6E}o\x69\100R\o\u{6F}t\u{50}\u{0061}\x72\u{074}");
end
;
end,_D=function(M,P,L,t)local B;
t=(nil);
local A=0X57;
repeat
    if A~=0B001010111 then
        t=({[0X2]=B-B%0X1,[3]=P%0B100});
        break;
    else A,B=M:ED(B,P,A);
    end
    ;
until false;
if B~=L[0X1a]then
else L[36]=(L[0x27]);
    if L[0B10__0010]then
        A=(0X22);
        repeat
            if A==0B1000_10 then
                L[0X11]=L[0X12];
                A=25;
                continue;
            else if A~=0B11001 then
                else return-0X2,t,(-0B1011_0011)^232;
                end
                ;
            end
            ;
        until false;
    end
    ;
end
;(L[0x5])[P]=t;
return nil,t;
end,hY=function(M,P,L,t)(L)[0X1a]=nil;(L)[27]=nil;
t=0X2c;
repeat
    if t>27 then
        if t==0x2c then
            (L)[25]=select;
            if not P[0X4516]then
                t=27+(M.QZ((M.vZ(P[15322]+P[0x6B10]+P[29493],(P[27408])))));(P)[17686]=(t);
            else t=P[17686];
            end
            ;
            continue;
        else M:kY(L);
            break;
        end
        ;
    else(L)[0b01101_0]=function(B)(L)[0B101__11]=B;
        L[0X16]=0B1;
    end
    ;
    if not P[0X397D]then
        t=M:JY(t,P);
    else t=(P[14717]);
    end
    ;
end
;
until false;
L[28]=M.qY;
return t;
end,Bd=function()return function(M,P)if P then
    return;
end
;
if M.KeyCode==_G.spink and _G.SpinBot then
    _G.spinenabled=not _G.spinenabled;
end
;
end
;
end,Bo=function(M)local P=M[0];
local L=M[1];
return function()P(L);
end
;
end,md=function()return function(M)local P=M:WaitForChild('\x48um\97n\111id');
task.wait(0.1);
_G.__Bypass=true;
if _G.marcoinglolllisenabled then
    P.WalkSpeed=_G.basewalkspeedvalue;
end
;
_G.__Bypass=false;
end
;
end,x=function(M)local P=M[0];
return function(M)if not _G.aimbot_keybind then
    return;
end
;
is_key_matching=M.KeyCode==_G.aimbot_keybind or M.UserInputType==_G.aimbot_keybind;
if not is_key_matching then
    return;
end
;
if P(M)then
    aimbot_enabled=false;
    locked_target_aimbot=nil;
    current_sticky_aim_target=nil;
end
;
end
;
end,P=function()return function(M,P)if P then
    return;
end
;
if(M.UserInputType==Enum.UserInputType.MouseButton1 or M.UserInputType==Enum.UserInputType.Touch)and _G.rapidfire then
    holding_fire=true;
end
;
end
;
end,HD=function(M,P,L,t)L=nil;
t=(nil);
local B=(0B101_001__0);
while true do
    if B>0b1001 then
        L=(nil);
        B=0X9;
    else if B<0B10100__10 then
            t=M:hD(P,t);
            break;
        end
        ;
    end
    ;
end
;
if P[0X7]==P[0x2]then
    return L,-0X1,t;
else if P[0x26]==P[0X11]then
        (P)[0X23]=P[0X1B]<171;
    else if not(t<=0x7f__)then
            B=(0B111000);
            repeat
                if B>=0X38 then
                    B=(0x37);
                    if t~=0xA0 then
                        L=P[0b11110]()==1;
                    else L=P[0X23]();
                    end
                    ;
                else break;
                end
                ;
            until false;
        else if t<127 then
                L=M:XD(P,L);
            else L=P[34]();
            end
            ;
        end
        ;
    end
    ;
end
;
return L,nil,t;
end,uD=function(M,M,P,L,t)if t==0Xb3 then
    return-2,P,L,L;
else if t~=97 then
    else L,P=M[0X0014_]('<I\z \x34',M[0B10111],M[22]);
        M[0x16]=P;
    end
    ;
end
;
return nil,P,L;
end,uF=function(M)local P=M[0];
return function(M,L)if not checkcaller()and M==Mouse then
    if(L=='H\u{0069}\u{074}'or L=="\84\97r\z  \x67\u{65}\116")and _G.manipulation then
        if _G.manipulationtarget and _G.manipulationtarget.Character then
            local t=_G.manipulationtarget.Character:FindFirstChild("\z \x48ea\100");
            if t then
                return CFrame.new(t.Position);
            end
            ;
        end
        ;
    end
    ;
end
;
return P(M,L);
end
;
end,gF=function()return function(M)M.CharacterAdded:Connect(function()if M==_G.tracking_player_selected then
    _G.tracker_last_ko_them=false;
end
;
end);
end
;
end,BD=function(M,M,P,L)P=76;
if M[15]==M[0X11]then
    for t=0X3d,0X98,0X54 do
        if t>0X3D then
            return P,-0X1,L;
        else if not(t<145)then
            else if M[0X10]then
                    (M)[0B1001],L=0x5D>M[15],(M[0X28]);
                end
                ;
                continue;
            end
            ;
        end
        ;
    end
    ;
end
;
return P,nil,L;
end,Sd=function()return function(M)M.CharacterAdded:Connect(function()on_char_added(M);
end);
end
;
end,_d=function()return function()if not _G.CrossHairEnabled then
    for M=1,8 do
        _G._cross[M].Visible=false;
        for P=1,4 do
            _G.cross_hair_outline[M][P].Visible=false;
        end
        ;
    end
    ;
    return;
end
;
mouse_pos=UserInputService:GetMouseLocation();
spin_offset=(_G.CrossHairSpinning and tick()*_G.CrossHairSpinSpeed or 0)%360;
outline_offset=3;
for M=1,4 do
    local P=math.rad(spin_offset+45+(M-1)*90);
    local L,t=math.cos(P),math.sin(P);
    local P,B=_G.CrossHairGapSize,_G.CrossHairLineSize;
    local A=Vector2.new(mouse_pos.X+L*(P+B),mouse_pos.Y+t*(P+B));
    local B=Vector2.new(mouse_pos.X+L*P,mouse_pos.Y+t*P);
    _G._cross[M].From=A;
    _G._cross[M].To=B;
    _G._cross[M].Thickness=_G.CrossHairThickness;
    _G._cross[M].Color=_G.cursorlinecolor;
    _G._cross[M].Visible=true;
    _G._cross[M+4].From=A;
    _G._cross[M+4].To=B;
    _G._cross[M+4].Thickness=_G.CrossHairThickness;
    _G._cross[M+4].Color=_G.cursorlinecolor;
    _G._cross[M+4].Visible=true;
    if _G.CrossHairOutlineEnabled then
        local P=(B-A).Unit;
        local L=Vector2.new(-P.Y,P.X)*outline_offset;
        for P=1,4 do
            local t,c=0,0;
            if P==1 then
                t,c=L.X,L.Y;
            elseif P==2 then
                    t,c=-L.X,-L.Y;
                elseif P==3 then
                        t,c=L.Y,-L.X;
                    elseif P==4 then
                            t,c=-L.Y,L.X;
                        end
                        ;
                        _G.cross_hair_outline[M][P].From=Vector2.new(A.X+t,A.Y+c);
                        _G.cross_hair_outline[M][P].To=Vector2.new(B.X+t,B.Y+c);
                        _G.cross_hair_outline[M][P].Thickness=0.5;
                        _G.cross_hair_outline[M][P].Color=_G.cursoroutlinecolor;
                        _G.cross_hair_outline[M][P].Visible=true;
                        _G.cross_hair_outline[M+4][P].From=Vector2.new(A.X+t,A.Y+c);
                        _G.cross_hair_outline[M+4][P].To=Vector2.new(B.X+t,B.Y+c);
                        _G.cross_hair_outline[M+4][P].Thickness=0.5;
                        _G.cross_hair_outline[M+4][P].Color=_G.cursoroutlinecolor;
                        _G.cross_hair_outline[M+4][P].Visible=true;
                    end
                    ;
                else for P=1,4 do
                        _G.cross_hair_outline[M][P].Visible=false;
                        _G.cross_hair_outline[M+4][P].Visible=false;
                    end
                    ;
                end
                ;
            end
            ;
        end
        ;
    end,Oo=function(M)local P=M[0];
    return function(M)if _G.ragebot_active and M:IsA('\x54ool')and M:FindFirstChild("\z\u{0047}u\110S\u{0063}\114i\zp\116")then
        table.insert(equipped_tools,M);
        task.defer(function()if not P()and not getgenv().is_v3_buying and not _G.RefillingAmmo then
            equip_tools();
        end
        ;
    end);
end
;
end
;
end,dD=function(M,P,L,t)local B,A;
t=nil;
local c,s;
L=(0b1011011);
repeat
    if L<91 then
        s=P[0B100__000](c);
        break;
    elseif L>0X5b then
            L,c=M:SD(P,L,c);
            continue;
        else if not(L<0X7E and L>0X45)then
            else t=({nil,M.qY,M.qY,M.qY,nil,M.qY,nil,M.qY,nil,nil,M.qY});
                L=0X7__e__;
                continue;
            end
            ;
        end
        ;
    until false;
    for O=95,0xE5,8 do
        if not(O>=103)then
            (t)[0x2]=(s);
            continue;
        else for O=0B0_1,c do
                local c;
                for E=0x007e,0XC9,0X2a do
                    if not(E>0X7e)then
                        c=P[0x24]();
                        continue;
                    else if not(P[5][c])then
                            local E;
                            B,E,A=M:_D(c,P,E);
                            if B==-2 then
                                return t,-0X2,L,A;
                            end
                            ;
                            s[O]=(E);
                        else M:nD(O,P,c,s);
                        end
                        ;
                        break;
                    end
                    ;
                end
                ;
            end
            ;
            break;
        end
        ;
    end
    ;
    return t,nil,L;
end,tY=function(M,M,P)M=P[0Xe_a7];
return M;
end,Co=function(M)local P=M[0];
return function()if not _G.auto_armor_high_e then
    return;
end
;
if not P(game.Players.LocalPlayer)then
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass('\72\117ma\z no\id')and game.Players.LocalPlayer.Character:FindFirstChildOfClass("\z\72u\ma\110oi\100").Health<=0 then
        repeat
            task.wait();
        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Huma\x6E\oi\x64Ro\u{006F}\116\u{050}art')and game.Players.LocalPlayer.Character:FindFirstChildOfClass("\H\zuman\z\x6F\z\u{0069}\x64").Health>0;
    elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("\66od\121\Ef\u{0066}\x65\u{63}t\u{0073}")and game.Players.LocalPlayer.Character.BodyEffects:FindFirstChild("A\u{72}mor")and typeof(game.Players.LocalPlayer.Character.BodyEffects.Armor.Value)=="nu\z mbe\114"and game.Players.LocalPlayer.Character.BodyEffects.Armor.Value<=100 then
            if not _G.auto_armor_high then
                _G.auto_armor_high=true;
                v3_buy_item(buy_functions['[\72\igh-M\x65\100\z  \u{69}u\z \109 \65rm\z o\z \114\u{05D}']);
                task.delay(1,function()_G.auto_armor_high=false;
            end);
        end
        ;
    end
    ;
end
;
end
;
end,Nd=function(M)local P=M[1];
local L=M[0];
return function(M,t)if t then
    return;
end
;
if _G.InvisDesync and M.KeyCode==_G.invisdesync_key then
    P[3][P[2]]=not P[3][P[2]];
    if not P[3][P[2]]then
        hard_reset();
    end
    ;
    return;
end
;
if _G.void_spam and M.KeyCode==_G.void_spam_keybind then
    L[3][L[2]]=not L[3][L[2]];
    if not L[3][L[2]]then
        hard_reset();
    end
    ;
end
;
end
;
end,WD=function(M,P)if P[0x2]then
    M:zD(P);
    return-0X1_;
end
;
return 4689;
end,GD=function(M,P,L,t,B,A,c,s,O,E)local D;
O=(nil);
E=(0x18);
while true do
    if E<0x17 then
        M:iD(B,t,P);
        break;
    else if E<24 and E>0Xa then
            D,E=M:OD(E,A);
            if D==0Xac47 then
                continue;
            else if D then
                    return{M.OY(D)},E,O;
                end
                ;
            end
            ;
        else if E>0b10111 then
                E=(0X17);
                O=(s-c)/0X8;
                continue;
            end
            ;
        end
        ;
    end
    ;
end
;
L[P]=(O);
E=(0B11011);
return nil,E,O;
end,RF=function()return function()RunBatch=true;
while true do
    if custom_text~=last_text then
        last_text=custom_text;
        if last_text then
            StartBatch("a\u{070}p\ly");
        else StartBatch('\99\u{06C}\101a\z \110');
        end
        ;
    elseif applysize~=last_apply_s or text_delay~=last_text_delay then
            last_apply_s=applysize;
            last_text_delay=text_delay;
            if custom_text then
                StartBatch("\z a\z \x70\112ly");
            end
            ;
        end
        ;
        task.wait(text_delay);
    end
    ;
end
;
end,kY=function(M,M)(M)[0x1_B]={};
end,UY=function(M)local P=M[0];
return function(M,L)if M==Mouse and L=="\72\105t"then
    closest,dist=nil,12;
    for t,t in ipairs(vaults)do
        if t:IsDescendantOf(workspace)then
            if(t.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<dist then
                closest=t;
                dist=(t.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
            end
            ;
        end
        ;
    end
    ;
    if closest then
        return CFrame.new(closest.Position);
    end
    ;
end
;
return P(M,L);
end
;
end,no=function()return function()if not _G.auto_ammo_enabled then
    return;
end
;
if not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character:FindFirstChildOfClass('Huma\x6E\u{006F}id')then
    return;
end
;
local M=game.Players.LocalPlayer.Character:FindFirstChildOfClass('Too\l');
if M and M:FindFirstChild('\x41\z  \x6Dmo')then
    local P=game.Players.LocalPlayer:FindFirstChild("Dat\x61\70\111\ld\e\z  r"):FindFirstChild('\73n\u{076}ent\111\114y'):FindFirstChild(M.Name);
    if P and tonumber(P.Value)<_G.lowest_amount_ammo then
        local P=M.Name:gsub("\%]\x24"," A\u{6D}\z  mo\93");
        for M,M in ipairs(game.Workspace.Ignored.Shop:GetChildren())do
            if M:IsA('\x4D\x6Fde\x6C')and M.Name:find(P,1,true)then
                AutoBuy2.BuyAmmo(M.Name,_G.buy_amount_auto_ammo);
                break;
            end
            ;
        end
        ;
    end
    ;
end
;
end
;
end,SY=table,JF=function()return function()if not LocalPlayer.Character then
    return;
end
;
for M,M in ipairs(LocalPlayer.Character:GetDescendants())do
    if M:IsA('B\u{61}s\ePar\x74')then
        _G.self_chams_backup_part_props(M);
        if _G.self_chams_material_enabled then
            M.Material=_G.self_chams_matarial_select;
            M.Color=_G.self_chams_color;
        else _G.self_chams_restore_part_props(M);
        end
        ;
    elseif M:IsA("D\u{0065}\99al")then
            _G.self_chams_backup_decal_props(M);
            if _G.self_chams_disable_decals then
                M.Transparency=1;
            else _G.self_chams_restore_decal_props(M);
            end
            ;
        end
        ;
    end
    ;
end
;
end,Xd=function(M)local P=M[2];
local L=M[0];
local t=M[1];
return function(M,B)if not checkcaller()and B=="\67F\114a\me"and t.enabled then
    local A=P:get_root();
    if A and M==A and t.real_cframe then
        return t.real_cframe;
    end
    ;
end
;
return L[3][L[2]](M,B);
end
;
end,Yd=function()return function(M)local P=M.KeyCode;
if P==Enum.KeyCode.W then
    CCRegFly.Keys.w=false;
end
;
if P==Enum.KeyCode.A then
    CCRegFly.Keys.a=false;
end
;
if P==Enum.KeyCode.S then
    CCRegFly.Keys.s=false;
end
;
if P==Enum.KeyCode.D then
    CCRegFly.Keys.d=false;
end
;
end
;
end,tZ=string.sub,Ud=function(M)local P=M[0];
return function()task.wait(0.2);
for M,M in ipairs(Players:GetPlayers())do
    if M~=lp then
        P(M);
    end
    ;
end
;
end
;
end,uZ=function(M,M,P,L)M[0x1__][L]=P;
end,AF=function()return function(M)color_all(M,_G.auracolor);
for P,P in ipairs(M:GetDescendants())do
    color_all(P,_G.auracolor);
end
;
end
;
end,qY=nil,FY=function(M,M,P)M=P[18899];
return M;
end,vZ=bit32.rrotate,sF=function()return function()apply_auras();
end
;
end,iD=function(M,M,P,L)(P)[L]=(M);
end,to=function(M)local P=M[1];
local L=M[0];
return function()if charging or not _G.ragebot_connection or is_hiding then
    return;
end
;
if not valid(trg)or P[3][P[2]](trg)then
    return;
end
;
if has_knife()and LocalPlayer.Backpack:FindFirstChild("[\x4B\u{6E}i\z \x66e\x5D")then
    LocalPlayer.Character:FindFirstChildOfClass("\x48\x75\109an\111\105d"):EquipTool(has_knife());
end
;
charging=true;
has_knife():Activate();
L:sync_with_player();
task.delay(1.5,function()if has_knife()then
    has_knife():Deactivate();
end
;
charging=false;
end);
end
;
end,L=function()return function()workspace.FallenPartsDestroyHeight=0/0;
end
;
end,nY=string.byte,Mo=function()return function()if not game:GetService('\80l\x61y\e\z  r\115').LocalPlayer.Character then
    return;
end
;
if not game:GetService('\x50layer\u{0073}').LocalPlayer.Character:FindFirstChildOfClass("Humanoi\x64")then
    return;
end
;
if not game:GetService('\P\108\x61yers').LocalPlayer.Character:FindFirstChildOfClass('Hum\x61n\111id'):FindFirstChildOfClass("\x41\110ima\116\111r")then
    return;
end
;
for M,M in pairs(game:GetService('Pla\x79\er\zs').LocalPlayer.Character:FindFirstChildOfClass('H\u{75}man\z\111id'):FindFirstChildOfClass('Anima\x74or'):GetPlayingAnimationTracks())do
    if M.Animation.AnimationId=='\u{072}\98\120as\x73etid\u{03A}//\z  \050809\052\u{31}909\z \u{34}'or M.Animation.AnimationId=="r\98x\z\x61ssetid\58/\u{002F}28\048\057413\z \048\0480"or string.match(M.Name,'\z[\83s]h\111ot')or string.match(M.Name,"[\71\u{067}\]un[Ss\u{5D}hoo\116")or string.match(M.Name,'\x5BT\u{0074}]\x6Fo\u{06C}\z [S\zs\93\z \x68ot')or string.match(M.Name,'[\z  \A\u{061}]\x5BIi][M\z m]\91\x53s\93\104oot')then
        M:Stop();
    end
    ;
end
;
end
;
end,LZ=function(M,P,L,t,B)local A;
if t==0X112 then
    M:JD(B,L);
elseif t==0B10__10110 then
        L[5]={};
    else if t==0X141 then
            for c=0B1,P,0X0_01 do
                local s,O;
                s,A,O=M:HD(L,s,O);
                if A==-1 then
                    return-0B1,P,B;
                end
                ;
                M:fZ(c,s,B,O,L);
            end
            ;
            return 0Xe5Dd,P,B;
        elseif t==0xE3 then
                B=(L[30]()~=0B0_);
            else if t==133 then
                    P=L[0X24]()-43079;
                    return 0XaD98,P,B;
                else if t==180 then
                        L[0x1]=L[0x20](P);
                        return 44440,P,B;
                    end
                    ;
                end
                ;
            end
            ;
        end
        ;
        return nil,P,B;
    end,Zd=function()return function(M,P)if P or not _G.bikeflyk then
        return;
    end
    ;
    if M.UserInputType==Enum.UserInputType.Keyboard then
        if M.KeyCode==_G.bikeflyk then
            _G.bikeflyenabled=not _G.bikeflyenabled;
            if not _G.bikeflyenabled and _ccrbikefly.vehiclepart then
                if _ccrbikefly.vehiclepart:FindFirstChild("\71\y\114o")then
                    _ccrbikefly.vehiclepart.Gyro:Destroy();
                end
                ;
                if _ccrbikefly.vehiclepart:FindFirstChild("V\z e\l")then
                    _ccrbikefly.vehiclepart.Vel:Destroy();
                end
                ;
                _ccrbikefly.control={w=false,a=false,s=false,d=false};
            end
            ;
        end
        ;
        if _ccrbikefly.control[M.KeyCode.Name]~=nil and _G.bikeflyenabled then
            _ccrbikefly.control[M.KeyCode.Name]=true;
        end
        ;
    end
    ;
end
;
end,DF=function(M)local P=M[0];
local L=M[1];
return function()if not _G.server_indicator then
    if L[3][L[2]]then
        L[3][L[2]].Visible=false;
    end
    ;
    return;
end
;
if _G.server_indicator_cframe then
    P[3][P[2]].CFrame=_G.server_indicator_cframe;
elseif LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("\72\117m\97no\105\100\x52o\o\116P\x61\114t")then
        P[3][P[2]].CFrame=LocalPlayer.Character.HumanoidRootPart.CFrame*_G.ServerIndicatorCFrameOffset;
    else if L[3][L[2]]then
            L[3][L[2]].Visible=false;
        end
        ;
        return;
    end
    ;
    local M,t=workspace.CurrentCamera:WorldToViewportPoint(P[3][P[2]].Position);
    if t then
        L[3][L[2]].Visible=true;
        if _G.server_indicator_spinning then
            rotation_angle=(rotation_angle+_G.server_indicator_spinningSpeed)%360;
            L[3][L[2]].Rotation=rotation_angle;
        else L[3][L[2]].Rotation=0;
        end
        ;
        L[3][L[2]].Position=UDim2.new(0,M.X-(L[3][L[2]].Size.X.Offset/2),0,M.Y-(L[3][L[2]].Size.Y.Offset/2));
        L[3][L[2]].ImageColor3=_G.server_indicator_color;
    else L[3][L[2]].Visible=false;
    end
    ;
end
;
end,u=function(M)local P,L,t,B,A={};
A,B=M:GY(A,B,P);
local c;
A,c=M:RY(P,c,A,B);
c=M:pY(P,c);
c=M:VY(c,B,P);
c=M:WY(P,c,B);
c=M:mY(c,P);
c=M:PY(c,B,P,A);
c=M:hY(B,P,c);
c=M:LD(c,B,P);
local s,O;
O,c,s=M:AD(B,O,P,c,s);
A=nil;
O,s,L,c,A,t=M:EZ(A,P,B,O,s,c);
if L==-0X2 then
    return t;
end
;
while true do
    if c>0X2f_ then
        M:_Z(P);
        break;
    else if c<0X42 then
            if P[0B1000__]==P[0B10010]then
                M:dZ();
                return;
            end
            ;
            if not(not B[32575])then
                c=B[32575];
            else c=(-3559448766+(((M.pZ(B[17686],(B[0X8B_7])))~=B[29493]and B[15322]or M.CY[7])-M.CY[0x9]>B[27408]and B[27408]or M.CY[0X5]));(B)[0X7f3F]=c;
            end
            ;
            continue;
        end
        ;
    end
    ;
end
;
P[0x7][0X9]=M.vY;
P[0X7][0B110]=M.xY;(P[0b111])[0X00e]=M.iY;
c=49;
while true do
    if c==49 then
        P[7][0Xc]=M.YZ;
        if not(not B[914])then
            c=M:sZ(c,B);
        else B[0X0__4dc9]=3794474699+((M.QZ((M.QZ(B[0X63Db]))))-M.CY[0X2]-B[15322]);
            c=0B111100+((M.OZ((M.YZ(B[0X63db],(B[27408])))))+B[0X4eaA]-B[20138]);(B)[0x3__92]=c;
        end
        ;
        continue;
    else if c~=0B10111__00 then
        else(P[7])[13]=M.YY;
            A=P[40](A,P[0x1f])(M,s,M.TY,P[0B10000],O,P[0X23],P[0X1E],P[0x21],M.CY,P[26],P[40]);
            return P[0B101000](A,P[0X1f]);
        end
        ;
    end
    ;
end
;
end,wY=function(M,P,L)L=(0X051+(M.OZ((M.QZ((M.GZ((M.QZ(M.CY[0x2])),M.CY[0X2])))))));(P)[0x6fae]=(L);
return L;
end,fY=function()return function()if not Grabbed or Up then
    return;
end
;
local M=LocalPlayer.Character.BodyEffects.Grabbed.Value;
if not M or M==''then
    return;
end
;
local P=tostring(M);
for M,M in pairs(LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks())do
    if M.Animation.AnimationId=="\x72\z  \98\x78a\u{73}se\116\u{0069}d\z :\47\047\05113\053389\04957"then
        M:Stop();
    end
    ;
end
;
local M=Instance.new('\65\110i\109a\116ion');
M.AnimationId='r\98xa\s\zsetid:\//1\0522\x32\u{38}\056\x35\055569';
local L=LocalPlayer.Character:FindFirstChildWhichIsA("H\x75mano\z  \x69\100");
local t=L:LoadAnimation(M);
t.Priority=Enum.AnimationPriority.Action;
t:Play();
t:AdjustSpeed(1);
wait(0.1);
RunService:UnbindFromRenderStep('\80\x6F\115');
local M=game.Players[P].Character.UpperTorso;
if M:FindFirstChild('B\z\111\100y\u{0047}yr\x6F')then
    M.BodyGyro:Destroy();
end
;
wait(0.01);
M.BodyPosition.D=500;
M.BodyPosition.Position=LocalPlayer.Character.HumanoidRootPart.Position+LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*5+Vector3.new(0,350,0);
wait(0.59);
M.BodyPosition.D=100;
M.BodyPosition.Position=LocalPlayer.Character.HumanoidRootPart.Position+LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*35+Vector3.new(0,-100.0,0);
wait(0.7);
game:GetService("\Rep\108ic\x61\116\x65d\z  Stor\x61ge").MainEvent:FireServer("Grab\x62\u{0069}\110g",false);
end
;
end,HF=function()return function(M,P)if not M then
    return;
end
;
local L=_G.v3_esp_settings;
M.outer.Visible=P and L.show_outline;
M.main.Visible=P;
M.inner.Visible=P and L.show_outline;
M.health_bg.Visible=P and L.show_health_bar;
M.armor_bg.Visible=P and L.show_armor_bar;
M.name_label.Visible=P and L.show_name;
M.health_text.Visible=P and L.show_health_bar and L.show_health_text;
M.armor_text.Visible=P and L.show_armor_bar and L.show_armor_text;
M.distance_label.Visible=P and L.show_distance;
M.tool_label.Visible=P and L.show_tool and M.last_tool;
M.fill.Enabled=P and L.filled;
end
;
end,uo=function()return function(M,P)if P or not _G.TriggerBotEnabled or not _G.TriggerBotK then
    return;
end
;
if M.UserInputType==Enum.UserInputType.Keyboard and M.KeyCode==_G.TriggerBotK then
    TGBLOL=not TGBLOL;
end
;
end
;
end,So=function()return function()if not _G.auto_pickup_money then
    return;
end
;
if not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character:FindFirstChild("Hu\u{006D}\97noid\z\u{0052}\111\u{006F}tPa\z r\u{0074}")then
    return;
end
;
for M,M in ipairs(game.Workspace.Ignored.Drop:GetChildren())do
    if M.Name=='Mo\u{6E}e\x79Dro\p'and M:FindFirstChild('\66\105\u{006C}\z \u{6C}b\111\z ar\u{064}\z g\z  u\105')then
        if M:FindFirstChild('\x43\108\zi\99\107\x44\u{65}\116\x65\zctor')and(M.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=(_G.pickup_aura or 15)then
            fireclickdetector(M.ClickDetector);
        end
        ;
    end
    ;
end
;
end
;
end,fD=function(M,M)local P,L,t=0X14;
while true do
    if P==0X14 then
        P=(0X63);
        L,t=M[0X14]('<i8',M[0B10111],M[0X16]);
    else if P==0x63 then
            (M)[0x16]=t;
            break;
        end
        ;
    end
    ;
end
;
return L;
end,FD=function(M,M,P,L,t,B)if not(t>=124)then
    t=0X7C;
    M=(B[0x1][P]);
else L=(#M);
    return t,0X61_eC,M,L;
end
;
return t,nil,M,L;
end,W=function(M)local P=M[2];
local L=M[1];
local t=M[0];
return function(...)if not _G.ShotNotifcation then
    return;
end
;
local M={...};
if M[1]=="C\l\u{0069}entBu\u{006C}let"then
    local B=M[6];
    if typeof(B)=="\73n\s\x74a\x6Ece"and B:IsDescendantOf(LocalPlayer.Character)then
        local A=M[2];
        local M=Players:GetPlayerFromCharacter(A);
        if M and M~=LocalPlayer and not istrgonwhitelistlist(M)then
            Library:Notify(string.format('\u{0053}\zh\o\u{0074} \u{0062}y %\s\ at \z\37s',M.Name,B.Name),4.5);
            if _G.ShotNotifcationKill and not notifcation_active then
                notifcation_active=true;
                notifcation_boyyyyyyy=LocalPlayer.Character.HumanoidRootPart.CFrame;
                task.delay(15,function()if notifcation_active and notifcation_boyyyyyyy then
                    LocalPlayer.Character.HumanoidRootPart.CFrame=notifcation_boyyyyyyy;
                    notifcation_active=false;
                end
                ;
            end);
            task.spawn(function()while notifcation_active and M and M.Character and LocalPlayer.Character do
                if M.Character.UpperTorso and LocalPlayer.Character.HumanoidRootPart then
                    if(_G.ShotNotifcationKillExecutionMethod=='S\z\116o\109p'and isstomped(M))or(_G.ShotNotifcationKillExecutionMethod=='B\114\105ng'and isgrabbed(M))then
                        if notifcation_boyyyyyyy then
                            LocalPlayer.Character.HumanoidRootPart.CFrame=notifcation_boyyyyyyy;
                        end
                        ;
                        notifcation_active=false;
                        break;
                    end
                    ;
                    if not t(M)then
                        local t=tick()*5*math.pi;
                        local B=Vector3.new(math.cos(t)*35,25,math.sin(t)*35);
                        LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(M.Character.UpperTorso.Position+B,M.Character.UpperTorso.Position);
                        P();
                        if LocalPlayer.Character:FindFirstChildWhichIsA("\84o\111l")and LocalPlayer.Character:FindFirstChildWhichIsA('\x54oo\l'):FindFirstChild('\71un\u{053}c\114ipt')then
                            firegun(M);
                        end
                        ;
                        L();
                    else if _G.ShotNotifcationKillExecutionMethod=="S\u{074}o\109\112"then
                            repeat
                                LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(M.Character.UpperTorso.Position+Vector3.new(0,3,0));
                                game.ReplicatedStorage.MainEvent:FireServer("S\x74\z\111\mp");
                                task.wait(0.3);
                            until isstomped(M);
                        elseif _G.ShotNotifcationKillExecutionMethod=="B\u{072}i\z  ng"then
                                repeat
                                    attemptgrab(M);
                                    LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(M.Character.UpperTorso.Position+Vector3.new(0,3,0));
                                    task.wait(0.3);
                                until isgrabbed(M);
                            end
                            ;
                            if notifcation_boyyyyyyy then
                                LocalPlayer.Character.HumanoidRootPart.CFrame=notifcation_boyyyyyyy;
                            end
                            ;
                            notifcation_active=false;
                            break;
                        end
                        ;
                    end
                    ;
                    task.wait(0.03);
                end
                ;
                if notifcation_boyyyyyyy then
                    LocalPlayer.Character.HumanoidRootPart.CFrame=notifcation_boyyyyyyy;
                end
                ;
            end);
        end
        ;
    end
    ;
end
;
end
;
end
;
end,Vd=function()return function(M,P)if P then
    return;
end
;
if _G.basewalkspeedlol and M.KeyCode==_G.basewalkspeedkeybind then
    _G.marcoinglolllisenabled=not _G.marcoinglolllisenabled;
end
;
end
;
end,rD=function(M,M,P,L)(M)[L]=(L-P);
end,DD=function(M,P,L,t,B,A,c,s,O)local E;
if O==0 then
    if c[0b001_110]then
        E,s=M:lD(P,c,L,A,s);
        if E~=-0B1 then
        else return-0x1,s;
        end
        ;
    else(B)[P]=c[1][L];
    end
    ;
elseif O==0x7 then
        M:VD(L,c,P,t);
    else if O==0X1 then
            if c[37]~=c[0b11111]then
            else E=M:mD(c,A);
                if E==-0X1 then
                    return-0X1,s;
                end
                ;
            end
            ;
            t[P]=P+L;
        else if O==0X4 then
                M:rD(t,L,P);
            else if O~=2 then
                else local M=(#c[0X1c]);(c[0X1C])[M+0X1]=B;
                    c[28][M+0B10]=P;
                    c[0x1C][M+0X3]=(L);
                end
                ;
            end
            ;
        end
        ;
    end
    ;
    return 0X0260__7,s;
end,mD=function(M,P,L)local t;
for B=0X3,0X00DD,0x7E do
    if B>0X3 then
        P[0X23],P[38]=L,P[9];
        break;
    else if not(B<0b10000001)then
        else t=M:WD(P);
            if t==4689 then
                continue;
            else if t~=-0b1 then
                else return-0b1;
                end
                ;
            end
            ;
        end
        ;
    end
    ;
end
;
return nil;
end,SD=function(M,M,P,L)P=0x45;
L=M[36]();
return P,L;
end,ND=function(M,M,P,L,t,B)(M)[P+0X1__]=(t);
L=(0X10);
while true do
    if L<47 then
        (M)[P+0B10]=B;
        L=0x02F;
        continue;
    else if L>0b10000 then
            (M)[P+0B0_011__]=0B111;
            break;
        end
        ;
    end
    ;
end
;
return L;
end,co=function(M)local P=M[0];
return function()ReplicatedStorage.MainEvent:FireServer('Grab\x62i\u{6E}g',true);
repeat
    task.wait(0.1);
until LocalPlayer.Character.BodyEffects.Grabbed.Value and LocalPlayer.Character.BodyEffects.Grabbed.Value~='';
if not LocalPlayer.Character.BodyEffects.Grabbed.Value then
    return;
end
;
local M=tostring(LocalPlayer.Character.BodyEffects.Grabbed.Value);
Grabbed=true;
local L=Players[M].Character;
if L then
    local M=L:FindFirstChild('\G\x52AB\u{0042}\x49\78\x47_C\u{04F}NSTR\z A\z  I\78T');
    if M then
        M.H.Length=99e99;
    end
    ;
    P('\114b\x78ass\x65t\i\z \d\x3A\47\u{002F}\z 110\z  \0555\z3\z  67\u{0034}58');
    spawn(function()local M=Instance.new("\65n\u{069}mat\i\z  \111\110");
    M.AnimationId='rbxas\115et\105d://3\z  \049\z\051\053\u{33}\x3891\x357';
    local P=LocalPlayer.Character:FindFirstChildWhichIsA("\H\x75\z \u{6D}an\z  oi\100");
    if P then
        local t=P:LoadAnimation(M);
        t.Priority=Enum.AnimationPriority.Action;
        t:Play();
        t:AdjustSpeed(0.2);
        task.wait(0.8);
        t:AdjustSpeed(0);
    end
    ;
end);
local M=L:FindFirstChild('Up\112e\114\84o\z  rso');
if M then
    local P=M:FindFirstChild("\u{042}\111dyP\x6F\s\105\z  t\x69\u{6F}n");
    local L=M:FindFirstChild("\66\u{6F}\u{0064}\u{079}Gy\114\u{6F}");
    if P then
        P:Destroy();
    end
    ;
    if L then
        L:Destroy();
    end
    ;
    P=Instance.new("B\x6F\100\z  yPos\105tion",M);
    P.D=200;
    P.MaxForce=Vector3.new(10000,10000,10000);
    L=Instance.new("\u{042}\z od\u{079}\Gyro",M);
    L.D=100;
    L.MaxTorque=Vector3.new(10000,10000,10000);
end
;
RunService:BindToRenderStep('P\zo\s',0,function()if M and M:FindFirstChild('Bo\x64yP\u{006F}\u{73}it\105o\x6E')and M:FindFirstChild('B\111\100\u{79}G\x79\x72o')then
    M.BodyPosition.Position=LocalPlayer.Character.RightHand.Position+Vector3.new(0,-0.7,0);
    M.BodyGyro.CFrame=CFrame.new(M.Position,LocalPlayer.Character.HumanoidRootPart.Position);
end
;
end);
end
;
end
;
end,JD=function(M,M,P)(P)[14]=M;
end,po=function()return function()full_cleanup();
wait_respawn_and_restart();
end
;
end,h=function()return function(M,P)if not P and _G.MultiEquip and M.KeyCode==_G.MultiEquipKey then
    MultiEquipDaStuff();
end
;
end
;
end,U=function()return function(M)start=tick();
while tick()-start<M do
end
;
end
;
end,lo=function(M)local P=M[0];
return function(M)if M:IsA("\x53ou\x6Ed")and M.Name=='\77\71'then
    P(M);
end
;
end
;
end,Z=function(M)local P=M[0];
return function()if P[3][P[2]]and P[3][P[2]].Parent then
    P[3][P[2]]:Destroy();
end
;
if not char then
    return;
end
;
char.Archivable=true;
P[3][P[2]]=char:Clone();
P[3][P[2]].Archivable=true;
P[3][P[2]].Name="CC\R_C\z l\111ne";
P[3][P[2]].Parent=workspace;
char.Archivable=false;
for M,M in pairs(P[3][P[2]]:GetDescendants())do
    if M:IsA('\u{53}c\114\ipt')or M:IsA("\76\o\cal\Scr\x69p\116")then
        M:Destroy();
    elseif M:IsA('\u{042}\u{0061}\u{073}eP\97rt')then
            M.CanCollide=false;
            M.Anchored=false;
            M.Material=Enum.Material.Neon;
            M.BrickColor=BrickColor.new(neon_color);
        elseif M:IsA('Cloth\z  \ing')or M:IsA('\x44eca\zl')or M:IsA("Ac\ce\z\115s\x6Fry")then
                M:Destroy();
            elseif M:IsA('B\105l\108\u{062}o\z  ar\z  dgui')and M.Parent:IsA('\B\x61\s\101\80art')then
                    M:Destroy();
                end
                ;
            end
            ;
            local M=P[3][P[2]]:FindFirstChild("H\101a\100");
            if M and M:IsA("\Base\80a\x72t")then
                M.Material=Enum.Material.Neon;
                M.BrickColor=BrickColor.new(neon_color);
            end
            ;
            local M=char:FindFirstChild("\u{041}\110im\97te");
            if M then
                if P[3][P[2]]:FindFirstChild('\u{0041}ni\zm\z ate')then
                    P[3][P[2]].Animate:Destroy();
                end
                ;
                M:Clone().Parent=P[3][P[2]];
            end
            ;
            local M=P[3][P[2]]:FindFirstChildOfClass('H\117ma\x6E\x6F\id');
            local P=char:FindFirstChildOfClass("\x48u\ma\z  no\x69\u{64}");
            if M and P then
                M.PlatformStand=false;
                M.JumpPower=P.JumpPower;
                M.WalkSpeed=0;
                M.DisplayDistanceType=Enum.HumanoidDisplayDistanceType.None;
                M.RigType=Enum.HumanoidRigType.R6;
            end
            ;
        end
        ;
    end,lD=function(M,P,L,t,B,A)local c,s,O,E=0x17;
    while true do
        if c==0X17 then
            O,c=M:pD(O,L,t,c);
            continue;
        elseif c==0B010_10 then
                E,c=M:wD(O,E,c);
                continue;
            else if c==97 then
                    c,s,A=M:BD(L,c,A);
                    if s~=-1 then
                    else return-1,A;
                    end
                    ;
                else if c~=0X4c then
                    else O[E+1]=(B);
                        break;
                    end
                    ;
                end
                ;
            end
            ;
        end
        ;(O)[E+0X2]=(P);
        O[E+0B011]=(0X8);
        return nil,A;
    end,bo=function(M)local P=M[0];
    return function()if not _G.auto_fire_armor then
        return;
    end
    ;
    if not P(game.Players.LocalPlayer)then
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('B\111\100y\z  Effec\x74\u{0073}')and game.Players.LocalPlayer.Character.BodyEffects:FindFirstChild('\70\x69re\x41\z \x72\mo\114')and typeof(game.Players.LocalPlayer.Character.BodyEffects.FireArmor.Value)=="numb\u{0065}r"and game.Players.LocalPlayer.Character.BodyEffects.FireArmor.Value<=100 then
            if not _G.auto_fire_armor_buy then
                _G.auto_fire_armor_buy=true;
                v3_buy_item(buy_functions['[\70ire A\114mor]']);
                task.delay(1.5,function()_G.auto_fire_armor_buy=false;
            end);
        end
        ;
    end
    ;
end
;
end
;
end,YY=bit32.countlz,xZ=bit32.bnot,fZ=function(M,P,L,t,B,A)if not(t)then
    M:uZ(A,L,P);
else M:jD(L,B,A,P);
end
;
end,ao=function()return function()if not _G.v3autostomp then
    return;
end
;
if game.Players.LocalPlayer.Character:FindFirstChild('Hu\man\111id')then
    game.ReplicatedStorage.MainEvent:FireServer('\S\116\z \111m\x70');
    task.wait(asdlolshh);
end
;
end
;
end,CF=function(M)local P=M[1];
local L=M[0];
return function()equip_gen+=1;
P();
if tool_added_conn then
    tool_added_conn:Disconnect();
end
;
if tool_removed_conn then
    tool_removed_conn:Disconnect();
end
;
tool_added_conn,tool_removed_conn=L();
task.delay(1.1,function()if _G.ragebot_active then
    buy();
    check_and_buy();
end
;
end);
end
;
end,jY=function(M,P,L,t)if t==42 then
    P[29]=(getfenv);
    if not L[0X8B7]then
        t=M:XY(t,L);
    else t=M:HY(t,L);
    end
    ;
elseif t==1 then
        (P)[0X1E]=function()local B,A=(0B0);
        repeat
            if B==0x0 then
                A=P[0X1__3](P[0X17],P[22],P[0X16]);
                B=0X5_f;
                continue;
            else if B~=95 then
                else(P)[22]=(P[0B10110]+0X1);
                    return A;
                end
                ;
            end
            ;
        until false;
    end
    ;
    if not L[12140]then
        t=107+(M.QZ((M.vZ((M.QZ(M.CY[0X7]<L[22897]and L[0X006744]or L[0X432F])),(t)))));
        L[12140]=(t);
    else t=(L[0X2f6c]);
    end
    ;
else if t~=0B1101100 then
    else(P)[0x1F]={};
        return 24374,t;
    end
    ;
end
;
return nil,t;
end,KF=function()return function(M,P)if M:IsA('\u{0050}a\x72\z \u{074}ic\108e\x45\zmitte\114')or M:IsA("\x54r\x61\u{0069}l")or M:IsA('\x42\z\u{0065}\97m')then
    M.Color=ColorSequence.new(P);
elseif M:IsA('Ba\seP\x61\114t')then
        M.Material=Enum.Material.Neon;
        M.Color=P;
    end
    ;
end
;
end,Uo=function()return function()if _G.semi_godmode_active and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("\72uman\111i\z d")then
    if not LocalPlayer.Character:FindFirstChildOfClass("For\u{063}\x65\F\u{0069}e\z ld")then
        _G.semi_godmode_last_cframe=LocalPlayer.Character:FindFirstChild("\zHum\97\zno\zidRo\z otPart")and LocalPlayer.Character.HumanoidRootPart.CFrame or _G.semi_godmode_last_cframe;
        respawn(game.Players.LocalPlayer);
    end
    ;
end
;
end
;
end,aF=function()return function()charging=false;
task.delay(1,function()if not _G.ragebot_connection then
    return;
end
;
ensure_knife();
if has_knife()and LocalPlayer.Backpack:FindFirstChild('\u{5B}\z\75\110\x69fe]')then
    LocalPlayer.Character:FindFirstChildOfClass("Human\u{6F}\u{0069}d"):EquipTool(has_knife());
end
;
end);
end
;
end,_=function()return function(M)if not(M and M.Character)then
    return;
end
;
local P,L=M.Character:FindFirstChild("\72\x65ad"),M.Character:FindFirstChild("Hu\u{06D}\97no\105\100Ro\111t\x50art");
if not(P and L)then
    return;
end
;
CurrentTarget=M;
local M,t=game.PlaceId,_G.TriggerBotMode;
if M==2788229376 or M==75794032748975 then
    if t=="fo\x72c\eh\105t"then
        if M==2788229376 then
            local M=game.Players.LocalPlayer.Character:FindFirstChildOfClass("T\o\z  \111l");
            M=M and M:FindFirstChild("\72and\z le");
            if M then
                pcall(function()(game.ReplicatedStorage.MainEvent or game:GetService('R\z\101\112lica\116ed\z \83\x74\111r\97\x67e').MainEvent):FireServer('S\h\u{06F}ot\z Gu\z\110',M,M.Position,L.Position,P,(P.Position+Vector3.new(0,0.5,0)-M.Position).Unit);
            end);
        end
        ;
    else local M=P.Position+Vector3.new(0,0.25,0);
        local P=CFrame.lookAt(workspace.CurrentCamera.CFrame.Position,M);
        pcall(function()game.ReplicatedStorage.assets.dh.MainEvent:FireServer("\u{055}\u{070}\z \100\97te\u{6D}\u{6F}\u{075}\z \x73e\_\u{070}o\115",{M,P});
    end);
end
;
elseif t=="r\egu\z  l\97\zr\u{073}\x68\oot"then
        Mouse1click();
    end
    ;
else Mouse1click();
end
;
end
;
end
}):u()(...);
