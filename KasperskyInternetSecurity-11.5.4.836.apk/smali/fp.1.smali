.class public final Lfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lfp;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lfp;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    iget-object v1, p0, Lfp;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    invoke-static {v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;I)I

    move-result v0

    .line 174
    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Lfp;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lfp;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v0, p0, Lfp;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object v0, p0, Lfp;->a:Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/gui/settings/SettingsGroupsFragment;->a(I)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
