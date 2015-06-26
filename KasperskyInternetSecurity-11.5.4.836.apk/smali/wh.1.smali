.class public final Lwh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Collection;


# direct methods
.method public static a(II)LbN;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lsr;->a()Lsr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsr;->a(I)Lss;

    move-result-object v0

    invoke-virtual {v0, p1}, Lss;->f(I)Lsp;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0, p1}, Lwh;->c(II)Lsq;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p0, p1}, Lsq;->b(II)LbK;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    invoke-static {p0, p1}, Lwh;->b(II)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static a()Ljava/util/Collection;
    .locals 4

    .prologue
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {}, Lwh;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwd;

    .line 54
    invoke-interface {v0}, Lwd;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_1
    return-object v1
.end method

.method public static a(Lwc;)Lsq;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lwc;->a()I

    move-result v0

    invoke-virtual {p0}, Lwc;->b()I

    move-result v1

    invoke-static {v0, v1}, Lwh;->c(II)Lsq;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lwh;->a(Landroid/app/Activity;I)V

    .line 107
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lwh;->a(Landroid/app/Activity;IZ)V

    .line 117
    return-void
.end method

.method private static a(Landroid/app/Activity;IZ)V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kaspersky/kts/gui/settings/SettingsMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v1, "com.kaspersky.kts.gui.settings.number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v1, "com.kaspersky.kts.gui.settings.only_specified_panel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method private static b(II)Ljava/lang/RuntimeException;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View cannot be created: view helper is not defined for setting #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in section #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static b()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lwh;->a:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-static {}, Lcom/kms/settings/SettingTabImpl;->values()[Lcom/kms/settings/SettingTabImpl;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lwh;->a:Ljava/util/Collection;

    .line 43
    :cond_0
    sget-object v0, Lwh;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lwh;->a(Landroid/app/Activity;IZ)V

    .line 128
    return-void
.end method

.method private static c(II)Lsq;
    .locals 3

    .prologue
    const v2, 0x7f0700f0

    .line 85
    invoke-static {}, Lsr;->a()Lsr;

    invoke-static {}, Lsr;->p()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 102
    :cond_0
    invoke-static {p0, p1}, Lwh;->b(II)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 88
    :pswitch_0
    const v0, 0x7f0a0004

    invoke-static {v2, v0}, Lsg;->a(II)Lsg;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 90
    :pswitch_1
    const v0, 0x7f0700f2

    const v1, 0x7f0700f3

    invoke-static {v0, v1}, Lsi;->a(II)Lsi;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_2
    const v0, 0x7f0a0006

    const v1, 0x7f0700f5

    invoke-static {v2, v0, v1}, Lsg;->a(III)Lsg;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_3
    const v0, 0x7f0700e6

    const v1, 0x7f0a0007

    const v2, 0x7f0700e7

    invoke-static {v0, v1, v2}, Lsg;->a(III)Lsg;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_4
    const v0, 0x7f0700ea

    const v1, 0x7f0700eb

    invoke-static {v0, v1}, Lsv;->a(II)Lsv;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_5
    const v0, 0x7f0700e8

    const v1, 0x7f0a0009

    const v2, 0x7f0700e9

    invoke-static {v0, v1, v2}, Lsg;->a(III)Lsg;

    move-result-object v0

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
