.class public final Lcu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16
    :cond_1
    iput-object p1, p0, Lcu;->a:Ljava/io/InputStream;

    .line 17
    iput-object p2, p0, Lcu;->b:Ljava/io/OutputStream;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcu;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public final b()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcu;->b:Ljava/io/OutputStream;

    return-object v0
.end method
