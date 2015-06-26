.class final Lgt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgx;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lorg/apache/http/HttpResponse;


# direct methods
.method constructor <init>(ILjava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Lgt;->a:I

    .line 280
    iput-object p2, p0, Lgt;->b:Ljava/lang/String;

    .line 281
    iput-object p3, p0, Lgt;->c:Lorg/apache/http/HttpResponse;

    .line 282
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lgt;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lgt;->b:Ljava/lang/String;

    return-object v0
.end method
