.class public final LiI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljl;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public final a()LiJ;
    .locals 2

    .prologue
    .line 21
    new-instance v0, LiJ;

    iget-object v1, p0, LiI;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, LiJ;-><init>(LiI;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 32
    const v2, -0x4cca81c3

    if-ne v1, v2, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LiI;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, LiI;->b:I

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v0, "4.3.0.308"

    iput-object v0, p0, LiI;->a:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, LiI;->b:I

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    const v1, -0x4cca81c3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    const-string v1, "4.4.2.1"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, LiI;->b:I

    return v0
.end method
