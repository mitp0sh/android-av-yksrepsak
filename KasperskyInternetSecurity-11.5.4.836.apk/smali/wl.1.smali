.class final Lwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private final a:Ljava/lang/String;

.field private synthetic b:Lwj;


# direct methods
.method public constructor <init>(Lwj;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lwl;->b:Lwj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lwl;->a:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private a(Lme;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 120
    sget-object v2, Lwk;->a:[I

    invoke-virtual {p1}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 123
    :pswitch_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx;->a(Lrz;)V

    .line 124
    iget-object v0, p0, Lwl;->b:Lwj;

    invoke-static {v0, v1}, Lwj;->a(Lwj;Lwl;)Lwl;

    .line 125
    iget-object v0, p0, Lwl;->b:Lwj;

    invoke-static {v0}, Lwj;->a(Lwj;)LaU;

    move-result-object v0

    iget-object v1, p0, Lwl;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LaU;->reportCommandSucced(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx;->a(Lrz;)V

    .line 130
    iget-object v0, p0, Lwl;->b:Lwj;

    invoke-static {v0, v1}, Lwj;->a(Lwj;Lwl;)Lwl;

    .line 133
    invoke-virtual {p1}, Lme;->h()Lcom/kms/antivirus/AntivirusUpdateError;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusUpdateError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_1
    iget-object v1, p0, Lwl;->b:Lwj;

    invoke-static {v1}, Lwj;->a(Lwj;)LaU;

    move-result-object v1

    iget-object v2, p0, Lwl;->a:Ljava/lang/String;

    sget-object v3, Lcom/kaspersky/components/ucp/UcpCommandError;->UnknownError:Lcom/kaspersky/components/ucp/UcpCommandError;

    invoke-interface {v1, v2, v3, v0}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 120
    nop

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
    .line 108
    check-cast p1, Lme;

    invoke-direct {p0, p1}, Lwl;->a(Lme;)V

    return-void
.end method
