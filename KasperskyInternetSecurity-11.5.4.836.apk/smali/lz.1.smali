.class public final Llz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/Class;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLjava/lang/Class;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Llz;->c:Ljava/lang/Object;

    .line 69
    const-wide/16 v0, 0x2

    iput-wide v0, p0, Llz;->a:J

    .line 70
    iput-object p3, p0, Llz;->b:Ljava/lang/Class;

    .line 71
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Llz;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/io/FileInputStream;)V
    .locals 4

    .prologue
    .line 85
    new-instance v1, Lly;

    iget-wide v2, p0, Llz;->a:J

    iget-object v0, p0, Llz;->b:Ljava/lang/Class;

    invoke-direct {v1, p1, v2, v3, v0}, Lly;-><init>(Ljava/io/InputStream;JLjava/lang/Class;)V

    .line 87
    :try_start_0
    invoke-virtual {v1}, Lly;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llz;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v1}, Lly;->close()V

    .line 93
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Llz;->c:Ljava/lang/Object;

    .line 94
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-virtual {v1}, Lly;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lly;->close()V

    throw v0
.end method

.method public final a(Ljava/io/FileOutputStream;)V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
