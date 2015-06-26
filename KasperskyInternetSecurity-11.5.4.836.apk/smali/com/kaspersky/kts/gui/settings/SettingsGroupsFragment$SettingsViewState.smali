.class public final enum Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DualPanel:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

.field public static final enum OnePanelDetails:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

.field public static final enum OnePanelGroups:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

.field private static final synthetic a:[Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 566
    new-instance v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    const-string v1, "OnePanelGroups"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->OnePanelGroups:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    .line 567
    new-instance v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    const-string v1, "OnePanelDetails"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->OnePanelDetails:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    .line 568
    new-instance v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    const-string v1, "DualPanel"

    invoke-direct {v0, v1, v4}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->DualPanel:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    .line 565
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    sget-object v1, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->OnePanelGroups:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->OnePanelDetails:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->DualPanel:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->a:[Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;
    .locals 1

    .prologue
    .line 565
    const-class v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->a:[Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    invoke-virtual {v0}, [Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment$SettingsViewState;

    return-object v0
.end method
