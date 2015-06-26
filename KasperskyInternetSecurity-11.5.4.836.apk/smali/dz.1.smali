.class final Ldz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo;


# instance fields
.field private synthetic a:Ldy;


# direct methods
.method constructor <init>(Ldy;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Ldz;->a:Ldy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 58
    const-string v0, "GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current location is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :try_start_0
    iget-object v0, p0, Ldz;->a:Ldy;

    invoke-virtual {v0}, Ldy;->n()Len;

    move-result-object v0

    iget-object v1, p0, Ldz;->a:Ldy;

    invoke-virtual {v1}, Ldy;->o()Lef;

    move-result-object v1

    invoke-interface {v1, p1}, Lef;->a(Landroid/location/Location;)Lee;

    move-result-object v1

    invoke-virtual {v0, v1}, Len;->a(Lee;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    iget-object v0, p0, Ldz;->a:Ldy;

    invoke-static {v0}, Ldy;->a(Ldy;)V

    .line 67
    iget-object v0, p0, Ldz;->a:Ldy;

    invoke-virtual {v0}, Ldy;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    const-string v0, "GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error on FindCommand: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    iget-object v0, p0, Ldz;->a:Ldy;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ldy;->a(Ldy;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iget-object v0, p0, Ldz;->a:Ldy;

    invoke-static {v0}, Ldy;->b(Ldy;)V

    .line 82
    iget-object v0, p0, Ldz;->a:Ldy;

    invoke-virtual {v0}, Ldy;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
