.class public final Lmt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lmy;

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmy;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmt;->a:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lmt;->c:I

    .line 13
    iput-object p3, p0, Lmt;->b:Lmy;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lmy;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lmt;->b:Lmy;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lmt;->c:I

    return v0
.end method
