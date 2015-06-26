.class Llg;
.super Lni;
.source "SourceFile"

# interfaces
.implements Lrz;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 116
    const-class v0, Llg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lni;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method private a(Llb;)V
    .locals 2

    .prologue
    .line 140
    sget-object v1, Lld;->a:[I

    invoke-virtual {p1}, Llb;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntispamEventType;

    invoke-virtual {v0}, Lcom/kms/antispam/AntispamEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 142
    :pswitch_0
    invoke-virtual {p1}, Llb;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Llg;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected static i()Llg;
    .locals 4

    .prologue
    .line 120
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v1

    .line 123
    const v2, 0x7f0700bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    const v3, 0x7f0700c0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v3, Llg;

    invoke-direct {v3, v2, v0, v1}, Llg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-object v3
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Llb;

    invoke-direct {p0, p1}, Llg;->a(Llb;)V

    return-void
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Llh;

    invoke-direct {v0, p0}, Llh;-><init>(Llg;)V

    return-object v0
.end method
