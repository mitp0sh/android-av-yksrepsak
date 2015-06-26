.class public final Ldn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Len;

.field private final b:Lef;

.field private final c:Led;


# direct methods
.method public constructor <init>(Led;Len;Lef;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ldn;->c:Led;

    .line 16
    iput-object p2, p0, Ldn;->a:Len;

    .line 17
    iput-object p3, p0, Ldn;->b:Lef;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Led;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ldn;->c:Led;

    return-object v0
.end method

.method public final b()Lef;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ldn;->b:Lef;

    return-object v0
.end method

.method public final c()Len;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ldn;->a:Len;

    return-object v0
.end method
