.class final Llj;
.super LoP;
.source "SourceFile"

# interfaces
.implements Lrz;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, LoP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected static a()Llj;
    .locals 4

    .prologue
    .line 85
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    invoke-static {}, LjJ;->h()LkZ;

    move-result-object v1

    invoke-interface {v1}, LkZ;->a()I

    move-result v1

    .line 87
    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    .line 88
    new-instance v2, Llj;

    const v3, 0x7f0700be

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Llj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(Llb;)V
    .locals 2

    .prologue
    .line 103
    sget-object v1, Lld;->a:[I

    invoke-virtual {p1}, Llb;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntispamEventType;

    invoke-virtual {v0}, Lcom/kms/antispam/AntispamEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 105
    :pswitch_0
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Llb;->a()I

    move-result v1

    aget-object v0, v0, v1

    .line 107
    invoke-virtual {p0, v0}, Llj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Llb;

    invoke-direct {p0, p1}, Llj;->a(Llb;)V

    return-void
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Llk;

    invoke-direct {v0, p0}, Llk;-><init>(Llj;)V

    return-object v0
.end method
