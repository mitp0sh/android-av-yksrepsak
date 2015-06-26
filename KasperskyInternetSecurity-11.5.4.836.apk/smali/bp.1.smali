.class public final Lbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lbp;->a:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lbp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 24
    return-void
.end method
