.class Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$SelectCommandListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;


# direct methods
.method private constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$SelectCommandListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;B)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$SelectCommandListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 102
    const/4 v0, -0x1

    .line 103
    packed-switch p2, :pswitch_data_0

    move p2, v0

    .line 112
    :pswitch_0
    new-instance v0, LkH;

    invoke-direct {v0, p2}, LkH;-><init>(I)V

    sget-object v1, LkH;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel$SelectCommandListener;->a:Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;

    invoke-static {v2}, Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntitheftSmsCommandsPanel;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, LoL;->b(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 115
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
