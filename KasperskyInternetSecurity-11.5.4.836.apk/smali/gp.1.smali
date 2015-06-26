.class public final Lgp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgw;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lgx;

.field private final d:Lgq;


# direct methods
.method public constructor <init>(LbA;[C)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lgq;

    invoke-direct {v0, p0}, Lgq;-><init>(Lgw;)V

    iput-object v0, p0, Lgp;->d:Lgq;

    .line 16
    iget-object v0, p0, Lgp;->d:Lgq;

    invoke-virtual {v0, p1, p2}, Lgq;->a(LbA;[C)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lgp;->c:Lgx;

    invoke-interface {v0}, Lgx;->a()I

    move-result v0

    return v0
.end method

.method public final a(Lgx;)V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 58
    iput-object p1, p0, Lgp;->c:Lgx;

    .line 59
    invoke-interface {p1}, Lgx;->a()I

    move-result v0

    .line 60
    invoke-interface {p1}, Lgx;->b()Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v3, 0x0

    iput-object v3, p0, Lgp;->a:Ljava/lang/String;

    .line 66
    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    const-string v0, " response: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 91
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgp;->b:Ljava/lang/String;

    .line 101
    return-void

    .line 68
    :pswitch_0
    const-string v0, "OK"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iput-object v1, p0, Lgp;->a:Ljava/lang/String;

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v0, "NOTCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "CANCELLED"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :pswitch_3
    const-string v0, "HTTPERROR"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :pswitch_4
    const-string v0, "SSLERROR"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :pswitch_5
    const-string v0, "INTERRUPTED"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgp;->d:Lgq;

    invoke-virtual {v0, p1, p2}, Lgq;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgp;->b:Ljava/lang/String;

    return-object v0
.end method
