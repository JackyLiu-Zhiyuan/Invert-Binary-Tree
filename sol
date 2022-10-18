from collections import deque
def invertBinaryTree(tree):
    nodes = deque()
    nodes.append(tree)
    while len(nodes):
        node = nodes.popleft()
        if node.left or node.right:
            node.left, node.right = node.right, node.left
    
        if node.left:
            nodes.append(node.left)
        if node.right:
            nodes.append(node.right)


    return tree
    


# This is the class of the input binary tree.
class BinaryTree:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None
