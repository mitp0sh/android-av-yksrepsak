.class final LuX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:LuU;

.field public c:Ljava/lang/String;

.field private synthetic d:LuV;


# direct methods
.method public constructor <init>(LuV;ZLuU;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, LuX;->d:LuV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-boolean p2, p0, LuX;->a:Z

    .line 410
    iput-object p3, p0, LuX;->b:LuU;

    .line 411
    iput-object p4, p0, LuX;->c:Ljava/lang/String;

    .line 413
    return-void
.end method
