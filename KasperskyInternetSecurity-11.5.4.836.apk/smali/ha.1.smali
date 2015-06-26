.class abstract Lha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Ljava/io/IOException;

.field private synthetic b:LgY;


# direct methods
.method constructor <init>(LgY;)V
    .locals 1

    .prologue
    .line 382
    iput-object p1, p0, Lha;->b:LgY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lha;->a:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lha;->a:Ljava/io/IOException;

    return-object v0
.end method
