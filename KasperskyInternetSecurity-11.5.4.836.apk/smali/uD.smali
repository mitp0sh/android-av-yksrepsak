.class final LuD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Luz;


# direct methods
.method private constructor <init>(Luz;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, LuD;->a:Luz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luz;B)V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0, p1}, LuD;-><init>(Luz;)V

    return-void
.end method

.method private a(Lme;)V
    .locals 2

    .prologue
    .line 756
    sget-object v1, LuC;->d:[I

    invoke-virtual {p1}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 764
    :goto_0
    return-void

    .line 758
    :pswitch_0
    iget-object v0, p0, LuD;->a:Luz;

    invoke-virtual {p1}, Lme;->i()Lmo;

    move-result-object v1

    invoke-static {v0, v1}, Luz;->a(Luz;Lmo;)V

    goto :goto_0

    .line 761
    :pswitch_1
    iget-object v0, p0, LuD;->a:Luz;

    invoke-virtual {p1}, Lme;->e()Lmn;

    move-result-object v1

    invoke-static {v0, v1}, Luz;->a(Luz;Lmn;)V

    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 752
    check-cast p1, Lme;

    invoke-direct {p0, p1}, LuD;->a(Lme;)V

    return-void
.end method
