.class public final Lfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lfq;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 552
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->a()Z

    move-result v0

    .line 553
    iget-object v1, p0, Lfq;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 554
    iget-object v1, p0, Lfq;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    invoke-static {v1, v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;Z)Z

    .line 555
    iget-object v0, p0, Lfq;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->b(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)Z

    move-result v0

    invoke-static {v0}, Lff;->a(Z)V

    .line 556
    iget-object v0, p0, Lfq;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->c(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)V

    .line 558
    :cond_0
    return-void
.end method
