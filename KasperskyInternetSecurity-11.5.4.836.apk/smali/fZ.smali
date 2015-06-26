.class final LfZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga;


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean p1, p0, LfZ;->a:Z

    .line 231
    return-void
.end method

.method synthetic constructor <init>(ZB)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, LfZ;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, LfZ;->a:Z

    return v0
.end method
